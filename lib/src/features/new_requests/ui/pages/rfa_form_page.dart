import 'dart:math';

import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../constraints.dart';
import '../../new_request.dart';

typedef ShowError = bool Function(AbstractControl<dynamic>)?;

class RFAFormPage extends StatefulWidget {
  const RFAFormPage({Key? key}) : super(key: key);

  @override
  State<RFAFormPage> createState() => _RFAFormPageState();
}

class _RFAFormPageState extends State<RFAFormPage> {
  final _formKey = GlobalKey<FormState>();

  final rfaForm = FormGroup(
    {
      'checkboxes': FormGroup(
        {
          'newRequest': FormControl<bool>(value: true),
          'reSubmission': FormControl<bool>(value: false),
          'expeditedReview': FormControl<bool>(value: false),
          'oralRequest': FormControl<bool>(value: false),
        },
      ),
      'employeeInformation': FormGroup(
        {
          'name': FormControl<String>(
              validators: [Validators.required, Validators.minLength(4)]),
          'dateOfInjury': FormControl<DateTime>(
            validators: [Validators.required],
          ),
          'dob': FormControl<String>(
            validators: [Validators.required],
          ),
          'claimNumber': FormControl<int>(),
          'employer': FormControl<String>(validators: [Validators.required]),
        },
      ),
      'physicianInformation': FormGroup(
        {
          // 'name': FormControl<String>(validators: [Validators.required]),
          'contactName': FormControl<String>(),
          'practiceName': FormControl<String>(),
          'address': FormControl<String>(),
          'city': FormControl<String>(),
          'state': FormControl<String>(),
          'zipCode': FormControl<int>(),
          'phone': FormControl<int>(),
          'faxNumber': FormControl<int>(),
          'speciality': FormControl<String>(),
          // 'npiNumber': FormControl<int>(validators: [Validators.required]),
          // 'emailAddress': FormControl<String>(
          //   validators: [
          //     Validators.email,
          //     Validators.required,
          //   ],
          // ),
        },
      ),
      'requestedTreamment': FormGroup(
        {
          // 'date': FormControl<DateTime>(validators: [Validators.required]),
        },
      ),
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReactiveForm(
                  formGroup: rfaForm,
                  child: Column(
                    children: [
                      Card(
                        color: kPrimaryColor,
                        child: SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Wrap(
                              spacing: 10,
                              children: const [
                                ReactiveCheckBoxTitle(
                                  title: 'New Request',
                                  formControlName: 'checkboxes.newRequest',
                                ),
                                ReactiveCheckBoxTitle(
                                  title:
                                      'Resubmission-Chnage in Material Facts',
                                  formControlName: 'checkboxes.reSubmission',
                                ),
                                ReactiveCheckBoxTitle(
                                  title:
                                      'Expedited Review: Check box if employee faces an'
                                      ' imminent and serious threat to his or her health',
                                  formControlName: 'checkboxes.expeditedReview',
                                ),
                                ReactiveCheckBoxTitle(
                                  title:
                                      'Check box if request is a written conformation of a'
                                      ' prior oral request',
                                  formControlName: 'checkboxes.oralRequest',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      RFAEmployeeInformationSection(fg: rfaForm),
                      ReactiveFormConsumer(
                        builder: (context, form, child) => TextButton(
                          onPressed: () {
                            if (form.valid) {
                              debugPrint("${form.value}");
                            }
                          },
                          child: const Text('Validate'),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                const RFAPhysicianInformationSection(),
                const SizedBox(height: 25),
                const RFAClaimAdministratorInformationSection(),
                const SizedBox(height: 25),
                const RFARequestedTreatmentSection(),
                const SizedBox(height: 25),
                const RFAClaimsUROResponseSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReactiveCheckBoxTitle extends StatelessWidget {
  const ReactiveCheckBoxTitle({
    Key? key,
    this.formControlName,
    required this.title,
  }) : super(key: key);
  final String? formControlName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ReactiveCheckbox(
            formControlName: formControlName,
          ),
          SizedBox(
            width:
                constraints.maxWidth < 660 ? constraints.maxWidth - 50 : null,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 13,
                color: Color(0xff333333),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      );
    });
  }
}

class ReactiveColumTextField extends StatelessWidget {
  const ReactiveColumTextField({
    Key? key,
    this.formControlName,
    required this.lable,
    this.maxWidth,
    this.minWidth,
    this.showErrors,
  }) : super(key: key);
  final String lable;
  final String? formControlName;
  final double? maxWidth;
  final double? minWidth;
  final ShowError? showErrors;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 6),
        ReactiveTextField(
          formControlName: formControlName,
          showErrors: showErrors,
          validationMessages: (control) => {},
          decoration: InputDecoration(
            isDense: true,
            constraints: BoxConstraints(
              maxWidth: max(maxWidth ?? double.infinity, minWidth ?? 0.0),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
      ],
    );
  }
}
