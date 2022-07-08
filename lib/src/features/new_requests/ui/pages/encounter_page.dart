import 'package:dme_pao/dme_pao.dart';
import 'package:fhir/r5.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';
import '../../applications/applications.dart';
import '../widgets/widgets.dart';

class EncounterPage extends StatefulWidget {
  const EncounterPage({Key? key}) : super(key: key);

  @override
  State<EncounterPage> createState() => _EncounterPageState();
}

class _EncounterPageState extends State<EncounterPage> {
  final _formKey = GlobalKey<FormState>();

  Coding? _encounterClass;
  String? _clinicalNote;
  CodeableConcept? _encounterType;
  CodeableConcept? _dischardeDisposition;
  List<EncounterDiagnosis>? _diagonsis;
  RDeviceRequest? _suppliesPrescribed;
  RDeviceRequest? _equiptmentsPrescribed;
  RMedicationRequest? _otcMedicationPrescribed;
  bool isReturnData = false;

  showMessage(String message, {Color? backgroundColor}) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showToast(context, message, backgroundColor: backgroundColor);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EncounterBloc, EncounterState>(
      listener: (context, state) {
        if (state is EncounterProfileCreationSuccess) {
          showMessage("Encounter Profile creation is successfull",
              backgroundColor: Colors.green);
        }

        if (state is EncounterProfileCreationFaliure) {
          showMessage("Encounter Profile creation Failed",
              backgroundColor: Colors.red);
        }

        if (state is CreateMedicationProfileSuccess) {
          showMessage("Medication Profile creation is successfull",
              backgroundColor: Colors.green);
        }

        if (state is CreateDeviceProfileSuccess) {
          showMessage("Device Profile creation is successfull",
              backgroundColor: Colors.green);
        }
        if (state is CreateMedicationProfileFailure) {
          showMessage("Medication Profile creation Failed",
              backgroundColor: Colors.red);
        }
        if (state is CreateDeviceProfileFailure) {
          showMessage("Device Profile creation Failed",
              backgroundColor: Colors.red);
        }
      },
      builder: (context, state) {
        return Form(
          key: _formKey,
          child: SingleChildScrollView(
            controller: ScrollController(),
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                //! class --> required
                EncounterClassSection(
                  valueSetter: encounterClassSetter,
                ),

                //! text
                // clinical note -- text field ()
                const SizedBox(height: 25),
                EncounterClinicalNoteSection(
                  valueSetter: clinicalNoteSetter,
                ),

                //!

                //! type --> required
                const SizedBox(height: 25),
                EncounterTypeSection(
                  valueSetter: encounterTypeSetter,
                ),

                //! diagnosis multiple
                const SizedBox(height: 25),
                EncounterDiagonsisConditionSearch(
                  valueSetter: diagnosisSetter,
                ),

                //! hospitilization section,Discharge disposition
                const SizedBox(height: 25),
                EncounterHospitilizationSection(
                  valueSetter: hospitilizationSetter,
                ),

                //! Equipments prescribed , device request
                const SizedBox(height: 25),

                EncounterDeviceMedicationPrescribedSection(
                  title: 'Equiptments Prescribed',
                  deviceSetter: equiptmentPrescribedSetter,
                ),

                //! Supplies prescribed , device request
                const SizedBox(height: 25),
                EncounterDeviceMedicationPrescribedSection(
                  title: 'Supplies Prescribed',
                  deviceSetter: suppliesPresribedSetter,
                ),

                //! OTC Medication prescribed, medicatioon request
                const SizedBox(height: 25),
                EncounterDeviceMedicationPrescribedSection(
                  title: 'OTC Medication Prescribed',
                  isDeviceSearch: false,
                  medicationSetter: otcMedicationPrescribedSetter,
                ),

                const SizedBox(height: 25),
                SubmitButton(
                  onPressed: () async {
                    setState(() {
                      isReturnData = true;
                    });
                    if (_formKey.currentState?.validate() == true) {
                      await showToast(
                        context,
                        "Encounter form is successfully filled out!",
                        backgroundColor: Colors.green,
                      );

                      _makeEncounterProfile();
                    } else {
                      showToast(
                        context,
                        "Enter/select all required fields",
                        backgroundColor: Colors.red,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  _makeEncounterProfile() {
    final encounter = Encounter(
      class_: _encounterClass!,
      meta: Meta(profile: [
        Canonical(
            'http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter')
      ]),
      status: Code('finished'),
      text: _clinicalNote != null
          ? Narrative(status: NarrativeStatus.additional, div: _clinicalNote!)
          : null,
      hospitalization: _dischardeDisposition != null
          ? EncounterHospitalization(
              dischargeDisposition: _dischardeDisposition,
            )
          : null,
      type: [_encounterType!],
      diagnosis: _diagonsis,
      subject: Reference(
        reference: 'urn:uuid:5cbc121b-cd71-4428-b8b7-31e53eba8184',
      ),
    );

    context
        .read<EncounterBloc>()
        .add(CreateEncounterProfile(encounter: encounter));

    if (_otcMedicationPrescribed != null) {
      context
          .read<EncounterBloc>()
          .add(CreateMedicationProfile(medication: _otcMedicationPrescribed!));
    }

    _makeDeviceRequest();
  }

  _makeDeviceRequest() {
    if (_suppliesPrescribed != null || _equiptmentsPrescribed != null) {
      final deviceRequest = RDeviceRequest.simplified(
        code: DeviceRequested(
          codeableConcept: CodeableConcept(
            coding: [
              if (_suppliesPrescribed != null)
                ..._suppliesPrescribed!.code.codeableConcept!.coding!,
              if (_equiptmentsPrescribed != null)
                ..._equiptmentsPrescribed!.code.codeableConcept!.coding!,
            ],
          ),
        ),
        requestIntent: RequestIntent.order,
        subject: Reference(),
      );

      context
          .read<EncounterBloc>()
          .add(CreateDeviceProfile(device: deviceRequest));
    }
  }

  encounterClassSetter(Coding value) {
    _encounterClass = value;
  }

  clinicalNoteSetter(String note) {
    _clinicalNote = note;
  }

  encounterTypeSetter(CodeableConcept value) {
    _encounterType = value;
  }

  diagnosisSetter(List<EncounterDiagnosis> value) {
    _diagonsis = value;
  }

  hospitilizationSetter(CodeableConcept value) {
    _dischardeDisposition = value;
  }

  equiptmentPrescribedSetter(RDeviceRequest value) {
    _equiptmentsPrescribed = value;
  }

  suppliesPresribedSetter(RDeviceRequest value) {
    _suppliesPrescribed = value;
  }

  otcMedicationPrescribedSetter(RMedicationRequest value) {
    _otcMedicationPrescribed = value;
  }
}
