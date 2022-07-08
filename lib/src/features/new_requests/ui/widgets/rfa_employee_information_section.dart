import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../new_request.dart';
import '../pages/rfa_form_page.dart';

class RFAEmployeeInformationSection extends StatefulWidget {
  const RFAEmployeeInformationSection({Key? key, required this.fg})
      : super(key: key);
  final FormGroup fg;

  @override
  State<RFAEmployeeInformationSection> createState() =>
      _RFAEmployeeInformationSectionState();
}

class _RFAEmployeeInformationSectionState
    extends State<RFAEmployeeInformationSection> {
  final TextEditingController injuryDateController = TextEditingController();
  final TextEditingController dobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return FormSectionLayout(
        childern: [
          ReactiveForm(
            formGroup: widget.fg,
            child: Wrap(
              spacing: 16,
              runSpacing: 10,
              children: [
                ReactiveColumTextField(
                  lable: 'Name (Last,First,Middle)',
                  formControlName: 'employeeInformation.name',
                  showErrors: (control) => control.dirty && control.invalid,
                ),
                ReactiveColumTextField(
                  lable: 'Date of Injury',
                  formControlName: 'employeeInformation.dateOfInjury',
                  maxWidth: constraints.maxWidth * 0.47,
                ),
                ReactiveColumTextField(
                  lable: 'Date of birth',
                  formControlName: 'employeeInformation.dob',
                  maxWidth: constraints.maxWidth * 0.47,
                ),
                ReactiveColumTextField(
                  lable: 'Claim Number',
                  formControlName: 'employeeInformation.claimNumber',
                  maxWidth: constraints.maxWidth * 0.47,
                ),
                ReactiveColumTextField(
                  lable: 'Employer',
                  formControlName: 'employeeInformation.employer',
                  maxWidth: constraints.maxWidth * 0.47,
                ),
              ],
            ),
          ),
        ],
        sectionName: 'Employee Information',
      );
    });
  }

  @override
  void dispose() {
    injuryDateController.dispose();
    dobController.dispose();
    super.dispose();
  }
}
