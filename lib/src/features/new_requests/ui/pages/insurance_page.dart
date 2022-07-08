import 'dart:convert';
import 'dart:math';

import 'package:fhir/r5.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../core/core.dart';
import '../../new_request.dart';

class InsurancePage extends StatefulWidget {
  const InsurancePage({Key? key}) : super(key: key);

  @override
  State<InsurancePage> createState() => _InsurancePageState();
}

class _InsurancePageState extends State<InsurancePage> {
  showMessage(BuildContext context, String message, {Color? backgroundColor}) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showToast(context, message, backgroundColor: backgroundColor);
    });
  }

  final _formKey = GlobalKey<FormState>();

  // primary insurance company
  final TextEditingController pInsuranceCompanyController =
      TextEditingController();
  final TextEditingController pMemberIdController = TextEditingController();
  final TextEditingController pGroupNumber = TextEditingController();

  // secondary insurance company
  final TextEditingController sMemberIdController = TextEditingController();
  final TextEditingController sGroupNumber = TextEditingController();

  // tartiary insurance company
  final TextEditingController tMemberIdController = TextEditingController();
  final TextEditingController tGroupNumber = TextEditingController();

  String? relationshipText;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CoverageBloc, CoverageState>(
      listener: (context, state) {
        if (state is SearchCoverageEligibilityStart) {
          showMessage(context, "Eligibility search in progress");
        }

        if (state is SearchCoverageEligibilityFailure) {
          showMessage(context, "Eligibility search faliure: ${state.message}",
              backgroundColor: Colors.red);
        }

        if (state is SearchCoverageEligibilitySuccess) {
          showMessage(context, "Eligibility search success",
              backgroundColor: Colors.green);
        }

        if (state is MakeCoverageProfileStart) {
          showMessage(context, "Coverage Profile Creation in progress");
        }

        if (state is MakeCoverageProfileSFailure) {
          showMessage(
              context, "Coverage Profile Creation faliure: ${state.message}",
              backgroundColor: Colors.red);
        }

        if (state is MakeCoverageProfileSuccess) {
          showMessage(context, "Coverage Profile Creation success",
              backgroundColor: Colors.green);
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          controller: ScrollController(),
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                FormSectionLayout(
                  childern: [
                    ColumnFormField(
                      lable: 'Insurance Company*',
                      maxWidth: 200,
                      controller: pInsuranceCompanyController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter Insurance Company Name";
                        }
                        return null;
                      },
                    ),
                    ColumnFormField(
                      lable: 'Member ID',
                      controller: pMemberIdController,
                      maxWidth: 200,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter Member Id";
                        }
                        return null;
                      },
                    ),
                    ColumnFormField(
                      lable: 'Group Number',
                      maxWidth: 200,
                      controller: pGroupNumber,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter Group Number";
                        }
                        return null;
                      },
                    ),
                    ColumDropdownFormField(
                      lable: 'Relationship',
                      onChange: (value) {
                        if (value == '--select--') {
                          relationshipText = null;
                        } else {
                          relationshipText = value;
                        }
                      },
                      maxWidth: 200,
                      values: subscriberRelationShip,
                      currentValue: 'Self',
                    ),
                  ],
                  sectionName: 'Primary Payer',
                ),

                // secondary payer --> member id, group
                const SizedBox(height: 25),
                FormSectionLayout(
                  childern: [
                    ColumnFormField(
                        controller: sMemberIdController,
                        lable: 'Member ID',
                        maxWidth: 200),
                    ColumnFormField(
                        controller: sGroupNumber,
                        lable: 'Group Number',
                        maxWidth: 200),
                  ],
                  sectionName: 'Secondary Payer',
                ),

                // tertiary payer --> member id, group
                const SizedBox(height: 25),
                FormSectionLayout(
                  childern: [
                    ColumnFormField(
                        controller: tMemberIdController,
                        lable: 'Member ID',
                        maxWidth: 200),
                    ColumnFormField(
                        controller: tGroupNumber,
                        lable: 'Group Number',
                        maxWidth: 200),
                  ],
                  sectionName: 'Tertairy Payer',
                ),

                // data validation
                const SizedBox(height: 25),
                if (state is SearchCoverageEligibilitySuccess)
                  EligibilityCardWidget(
                    eligibility: state.eligibility,
                  ),

                const SizedBox(height: 25),
                SubmitButton(
                  title: (state is SearchCoverageEligibilitySuccess)
                      ? 'Submit'
                      : 'Search',
                  onPressed: () {
                    if (_formKey.currentState?.validate() == true) {
                      if (state is! SearchCoverageEligibilitySuccess) {
                        final ele = EligibilitySummaryRequest(
                          payerCode: '00192',
                          payerName: pInsuranceCompanyController.text,
                          provider: Provider(
                            lastName: 'prabhu',
                            npi: '1780688705',
                          ),
                          practiceTypeCode: '12',
                          subscriber: SummarySubscriber(
                            memberID: pMemberIdController.text,
                            dob:
                                DateFormat('MM/dd/yyyy').format(DateTime.now()),
                            firstName: 'first_name',
                            lastName: 'last_name',
                          ),
                          isSubscriberPatient: "True",
                          doS_StartDate:
                              DateFormat('MM/dd/yyyy').format(DateTime.now()),
                          doS_EndDate:
                              DateFormat('MM/dd/yyyy').format(DateTime.now()),
                        );

                        context.read<CoverageBloc>().add(
                              SearchCoverageEligibility(ele),
                            );
                      } else {
                        final coverage = Coverage(
                          beneficiary: Reference(
                            reference:
                                'Patient/a3f5bd53-4962-421a-9ce5-3e235c0c1bc7',
                          ),
                          meta: Meta(
                            profile: [
                              Canonical(
                                  'http://hl7.org/fhir/us/dme-orders/StructureDefinition/PAOX-coverage'),
                            ],
                          ),
                          payor: [
                            Reference(
                              reference: '#7601003005431',
                              display: pInsuranceCompanyController.text,
                            ),
                          ],
                          status: Code('active'),
                          relationship:
                              codeableConceptFromSubscriberRelationShip[
                                  relationshipText ?? 'default'],
                        );

                        debugPrint(jsonEncode(coverage.toJson()));

                        context.read<CoverageBloc>().add(
                              MakeCoverageProfile(coverage),
                            );
                      }
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

  @override
  void dispose() {
    pInsuranceCompanyController.dispose();
    pMemberIdController.dispose();
    pGroupNumber.dispose();

    sMemberIdController.dispose();
    sGroupNumber.dispose();

    tMemberIdController.dispose();
    tGroupNumber.dispose();

    super.dispose();
  }
}

class EligibilityCardWidget extends StatelessWidget {
  const EligibilityCardWidget({
    Key? key,
    this.eligibility,
  }) : super(key: key);
  final EligibilitySummaryResponse? eligibility;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 3,
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                //! general info
                EligibilityInfoWidget(
                  title: 'General',
                  children: [
                    buildTableRow(
                      'Status',
                      eligibility?.planCoverageSummary?.Status ?? '',
                      context,
                      textColor:
                          eligibility?.planCoverageSummary?.Status == 'Active'
                              ? Colors.green
                              : Colors.red,
                    ),
                    buildTableRow(
                        'Payer', eligibility?.PayerName ?? '', context),
                    buildTableRow('VerificationType',
                        eligibility?.VerificationType ?? '', context),
                    buildTableRow('DOS', eligibility?.DOS ?? '', context),
                    buildTableRow(
                      'Eligibility Period',
                      '${eligibility?.planCoverageSummary?.EffectiveDate ?? ""}'
                          '   to'
                          '   ${eligibility?.planCoverageSummary?.ExpiryDate ?? ""}',
                      context,
                    ),
                  ],
                ),
                //! demographic info
                EligibilityInfoWidget(
                  title: 'Demographic',
                  children: (eligibility?.DemographicInfo == null)
                      ? []
                      : [
                          buildTableRow(
                            'Address',
                            makePboAddress(
                                eligibility!.DemographicInfo!.Subscriber),
                            context,
                          ),
                          buildTableRow(
                            'Name',
                            eligibility!
                                    .DemographicInfo!.Subscriber?.FullName ??
                                '',
                            context,
                          ),
                          buildTableRow(
                            'Gender',
                            eligibility!
                                    .DemographicInfo!.Subscriber?.Gender_R ??
                                '',
                            context,
                          ),
                        ],
                ),

                //! Dependent Info
                EligibilityInfoWidget(
                  title: 'Dependent',
                  children: (eligibility?.DemographicInfo?.Dependent == null)
                      ? [
                          buildTableRow(
                            '--',
                            'No One',
                            context,
                          ),
                        ]
                      : [
                          buildTableRow(
                            'Relationship',
                            eligibility!
                                    .DemographicInfo!.Dependent?.Relationship ??
                                '',
                            context,
                          ),
                          buildTableRow(
                            'Address',
                            makePboAddress(eligibility!
                                .DemographicInfo!.Dependent?.DependentInfo),
                            context,
                          ),
                          buildTableRow(
                            'Name',
                            eligibility!.DemographicInfo!.Dependent
                                    ?.DependentInfo?.FullName ??
                                '',
                            context,
                          ),
                          buildTableRow(
                            'Gender',
                            eligibility!.DemographicInfo!.Dependent
                                    ?.DependentInfo?.Gender_R ??
                                '',
                            context,
                          ),
                        ],
                ),

                //! Insurance Info
                EligibilityInfoWidget(
                  title: 'Insurance',
                  isLargeTitle: true,
                  addBorder: true,
                  children: eligibility?.HBPC_Deductible_OOP_Summary == null
                      ? eligibility?.medicareInfoSummary == null
                          ? [
                              buildTableRow(
                                  'Error',
                                  'no insurance information are provided',
                                  context)
                            ]
                          : [
                              buildTableRow(
                                  'Part A Deductible',
                                  eligibility!.medicareInfoSummary!
                                          .Part_A_Deductible?.Value ??
                                      '',
                                  context),
                              buildTableRow(
                                  'Part A Deductible Remaining',
                                  eligibility!.medicareInfoSummary!
                                          .Part_A_Deductible_Remaining?.Value ??
                                      '',
                                  context),
                              buildTableRow(
                                  'Part B Deductible',
                                  eligibility!.medicareInfoSummary!
                                          .Part_B_Deductible?.Value ??
                                      '',
                                  context),
                              buildTableRow(
                                  'Part B Deductible Remaining',
                                  eligibility!.medicareInfoSummary!
                                          .Part_B_Deductible_Remaining?.Value ??
                                      '',
                                  context),
                              buildTableRow(
                                  'OT UsedAmount',
                                  eligibility!.medicareInfoSummary!
                                          .OT_UsedAmount?.Value ??
                                      '',
                                  context),
                              buildTableRow(
                                  'PT SLP UsedAmount',
                                  eligibility!.medicareInfoSummary!
                                          .PT_SLP_UsedAmount?.Value ??
                                      '',
                                  context),
                            ]
                      : [
                          buildTableRow(
                              'Individual Deductible In Net',
                              eligibility!.HBPC_Deductible_OOP_Summary!
                                      .IndividualDeductibleInNet?.Value ??
                                  '',
                              context),
                          buildTableRow(
                              'Individual Deductible Remaining Out Net',
                              eligibility!.HBPC_Deductible_OOP_Summary!
                                      .IndividualDeductibleOutNet?.Value ??
                                  '',
                              context),
                          buildTableRow(
                              'Individual Deductible Remaining In Net',
                              eligibility!
                                      .HBPC_Deductible_OOP_Summary!
                                      .IndividualDeductibleRemainingInNet
                                      ?.Value ??
                                  '',
                              context),
                          buildTableRow(
                              'Individual Deductible Remaining Out Net',
                              eligibility!
                                      .HBPC_Deductible_OOP_Summary!
                                      .IndividualDeductibleRemainingOutNet
                                      ?.Value ??
                                  '',
                              context),
                          buildTableRow(
                              'Family Deductible In Net',
                              eligibility!.HBPC_Deductible_OOP_Summary!
                                      .FamilyDeductibleInNet?.Value ??
                                  '',
                              context),
                          buildTableRow(
                              'Family Deductible Out Net',
                              eligibility!.HBPC_Deductible_OOP_Summary!
                                      .FamilyDeductibleOutNet?.Value ??
                                  '',
                              context),
                          buildTableRow(
                              'Family Deductible Remaining In Net',
                              eligibility!.HBPC_Deductible_OOP_Summary!
                                      .FamilyDeductibleRemainingInNet?.Value ??
                                  '',
                              context),
                          buildTableRow(
                              'Family Deductible Remaining Out Net',
                              eligibility!.HBPC_Deductible_OOP_Summary!
                                      .FamilyDeductibleRemainingOutNet?.Value ??
                                  '',
                              context),
                          buildTableRow(
                              'Individual OOP In Net',
                              eligibility!.HBPC_Deductible_OOP_Summary!
                                      .IndividualOOP_InNet?.Value ??
                                  '',
                              context),
                          buildTableRow(
                              'Individual Deductible In Net',
                              eligibility!.HBPC_Deductible_OOP_Summary!
                                      .IndividualDeductibleInNet?.Value ??
                                  '',
                              context),
                          buildTableRow(
                              'Individual OOP Out Net',
                              eligibility!.HBPC_Deductible_OOP_Summary!
                                      .IndividualOOP_OutNet?.Value ??
                                  '',
                              context),
                          buildTableRow(
                              'Family OOP In Net',
                              eligibility!.HBPC_Deductible_OOP_Summary!
                                      .FamilyOOPInNet?.Value ??
                                  '',
                              context),
                          buildTableRow(
                              'Family OOP Out Net',
                              eligibility!.HBPC_Deductible_OOP_Summary!
                                      .FamilyOOPOutNet?.Value ??
                                  '',
                              context),
                          buildTableRow(
                              'Family OOP Remaining In Net',
                              eligibility!.HBPC_Deductible_OOP_Summary!
                                      .FamilyOOPRemainingInNet?.Value ??
                                  '',
                              context),
                          buildTableRow(
                              'Family OOP Remaining Out Net',
                              eligibility!.HBPC_Deductible_OOP_Summary!
                                      .FamilyOOPRemainingOutNet?.Value ??
                                  '',
                              context),
                        ],
                ),
              ],
            )),
      ),
    );
  }

  String makeAddress(Subscriber? info) {
    String data = '';
    data +=
        "${info?.address1 ?? ''} ${info?.city ?? ''} ${info?.zip ?? ''}, ${info?.state ?? ''}  ";
    return data;
  }

  String makePboAddress(PboSubscriber? info) {
    return "${info?.Address1 ?? ''} ${info?.City ?? ''} ${info?.Zip ?? ''}, ${info?.State ?? ''}  ";
  }

  String giveString(List<NetworkParameter>? parameters) {
    String data = '';

    if (parameters != null && parameters.isNotEmpty) {
      for (var item in parameters) {
        data += "${item.key ?? ''} : ${item.value ?? ''} , ";
      }
    }

    return data;
  }

  TableRow buildTableRow(String title, String? subTitle, BuildContext context,
      {Color? textColor}) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text('$title:'),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            subTitle ?? '',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: textColor ?? const Color(0xff333333),
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ],
    );
  }
}

class EligibilityInfoWidget extends StatelessWidget {
  const EligibilityInfoWidget({
    Key? key,
    this.children,
    required this.title,
    this.isLargeTitle = false,
    this.addBorder = false,
    this.addOuterBorder = true,
  }) : super(key: key);
  final String title;
  final List<TableRow>? children;
  final bool isLargeTitle;
  final bool addBorder;
  final bool addOuterBorder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        decoration: addOuterBorder
            ? BoxDecoration(
                border: Border.all(
                  color: const Color(0xff666666),
                  width: 1,
                ),
              )
            : null,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
              child: Text(
                '$title Info',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            Table(
              columnWidths: {
                0: isLargeTitle
                    ? FixedColumnWidth(min(
                        constraints.maxWidth < 670
                            ? constraints.maxWidth - 60
                            : constraints.maxWidth < 770
                                ? 200
                                : constraints.maxWidth < 885
                                    ? 250
                                    : 300,
                        constraints.maxWidth - 50))
                    : const FixedColumnWidth(120),
                1: isLargeTitle
                    ? const FixedColumnWidth(120)
                    : FixedColumnWidth(min(
                        constraints.maxWidth < 670
                            ? constraints.maxWidth - 60
                            : constraints.maxWidth < 770
                                ? 200
                                : constraints.maxWidth < 885
                                    ? 250
                                    : 300,
                        constraints.maxWidth - 50)),
              },
              border: addBorder
                  ? const TableBorder(
                      horizontalInside: BorderSide(
                        color: Color(0xff666666),
                        width: 1,
                      ),
                    )
                  : null,
              children: children ?? [],
            ),
          ],
        ),
      );
    });
  }
}
