import 'package:fhir/r5.dart';
import 'package:flutter/material.dart';

import '../../../../core/ui/column_form_field.dart';
import 'form_section_layout.dart';

class NewRequestNameSection extends StatefulWidget {
  const NewRequestNameSection({
    Key? key,
    this.color,
    this.addValidator = false,
    this.nameSetter,
    this.returnData = false,
    this.validatedIfEmpty = true,
    this.name,
  }) : super(key: key);
  final Color? color;
  final bool addValidator;
  final bool returnData;
  final ValueSetter<HumanName>? nameSetter;
  final HumanName? name;

  /// if true the form will throw the error if user doesn't enter values
  final bool validatedIfEmpty;

  @override
  State<NewRequestNameSection> createState() => _NewRequestNameSectionState();
}

class _NewRequestNameSectionState extends State<NewRequestNameSection> {
  final _prefixController = TextEditingController();
  final _familyNameController = TextEditingController();
  final _middleNameController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _suffixController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.name != null) {
      _prefixController.text = widget.name!.prefix?.first ?? '';
      _familyNameController.text = widget.name!.family ?? '';
      _middleNameController.text = widget.name!.given?.first ?? '';
      _firstNameController.text = widget.name!.given?.first ?? '';
      _suffixController.text = widget.name!.suffix?.first ?? '';
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant NewRequestNameSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.name != null) {
      _prefixController.text = widget.name!.prefix?.first ?? '';
      _familyNameController.text = widget.name!.family ?? '';
      _middleNameController.text = widget.name!.given?.last ?? '';
      _firstNameController.text = widget.name!.given?.first ?? '';
      _suffixController.text = widget.name!.suffix?.first ?? '';
    }
  }

  @override
  void dispose() {
    _prefixController.dispose();
    _familyNameController.dispose();
    _middleNameController.dispose();
    _suffixController.dispose();
    _firstNameController.dispose();
    super.dispose();
  }

  String? validateNotRequiredFields(value) {
    if (widget.addValidator &&
        value != null &&
        value.isNotEmpty &&
        value.length < 3) {
      return "Enter valid data";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.nameSetter != null && widget.returnData) {
      widget.nameSetter!(
        HumanName(
          prefix: _prefixController.text == '' ? [] : [_prefixController.text],
          suffix: _suffixController.text == '' ? [] : [_suffixController.text],
          family: _familyNameController.text == ''
              ? null
              : _familyNameController.text,
          given: _middleNameController.text == ''
              ? [_firstNameController.text]
              : [_firstNameController.text, _middleNameController.text],
          use: HumanNameUse.official,
        ),
      );
    }
    return LayoutBuilder(
      builder: (context, constraints) {
        return FormSectionLayout(
          color: widget.color,
          childern: [
            ColumnFormField(
              lable: 'Prefix',
              maxWidth: constraints.maxWidth * 0.1,
              minWidth: 100,
              controller: _prefixController,
              validator: validateNotRequiredFields,
            ),

            //! required
            ColumnFormField(
              lable: 'Family Name',
              maxWidth: constraints.maxWidth * 0.25,
              minWidth: 200,
              controller: _familyNameController,
              validator: widget.addValidator
                  ? (value) {
                      if (widget.validatedIfEmpty) {
                        if ((value == null || value.isEmpty)) {
                          return "Enter Family Name";
                        } else if (value.length < 3) {
                          return "Length > 3";
                        }
                      }
                      return null;
                    }
                  : null,
            ),

            ColumnFormField(
              lable: 'Middle Name',
              maxWidth: constraints.maxWidth * 0.25,
              minWidth: 200,
              controller: _middleNameController,
              validator: validateNotRequiredFields,
            ),

            //! required
            ColumnFormField(
              lable: 'First Name',
              maxWidth: constraints.maxWidth * 0.25,
              controller: _firstNameController,
              minWidth: 200,
              validator: widget.addValidator
                  ? (value) {
                      if (widget.validatedIfEmpty) {
                        if (value == null || value.isEmpty) {
                          return "Enter First Name";
                        } else if (value.length < 3) {
                          return "Length > 3";
                        }
                      }
                      return null;
                    }
                  : null,
            ),
            ColumnFormField(
              lable: 'Suffix',
              maxWidth: constraints.maxWidth * 0.1,
              minWidth: 100,
              controller: _suffixController,
              validator: validateNotRequiredFields,
            ),
          ],
          sectionName: 'General',
        );
      },
    );
  }
}
