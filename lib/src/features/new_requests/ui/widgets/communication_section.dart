import 'dart:math';

import 'package:fhir/r5.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:raidon_fhir/src/core/convertors/contact_point_convertor.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/ui/column_form_field.dart';
import 'form_section_layout.dart';

class CommunicationSection extends StatefulWidget {
  const CommunicationSection({
    Key? key,
    this.color,
    this.returnValue = false,
    this.communicationSetter,
    this.invalidFormSetter,
    this.addFax = false,
  }) : super(key: key);
  final Color? color;
  final bool returnValue;
  final ValueSetter<List<ContactPoint>>? communicationSetter;
  final ValueChanged<bool>? invalidFormSetter;
  final bool addFax;

  @override
  State<CommunicationSection> createState() => _CommunicationSectionState();
}

class _CommunicationSectionState extends State<CommunicationSection> {
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _faxController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final List<ContactPoint> _contactPointList = [];

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  bool? checkTheFieldsValidation() {
    if (_phoneController.text.isNotEmpty ||
        _emailController.text.isNotEmpty ||
        _faxController.text.isNotEmpty) {
      return _formKey.currentState?.validate();
    }
    return null;
  }

  bool isAllEmpty() {
    return (_phoneController.text.isEmpty &&
        _emailController.text.isEmpty &&
        _faxController.text.isEmpty);
  }

  callBackToChangeParentFormState() {
    if (widget.invalidFormSetter != null) {
      if (checkTheFieldsValidation() == false) {
        widget.invalidFormSetter!(true);
      } else {
        widget.invalidFormSetter!(false);
        if (isAllEmpty()) {
          _formKey.currentState?.reset();
          _phoneController.clear();
          _emailController.clear();
          _faxController.clear();
        } else if (_phoneController.text.isEmpty) {
          _phoneController.clear();
        } else if (_emailController.text.isEmpty) {
          _emailController.clear();
        } else if (_faxController.text.isEmpty) {
          _faxController.clear();
        }
      }
    }
  }

  // void addContactPointAndResetControllers() {
  //   setState(() {
  //     _contactPointList.add(
  //       ContactPoint(
  //         value: _phoneController.text,
  //         system: textToContactPointSystem('Phone'),
  //         use: textToContactPointUse('Home'),
  //       ),
  //     );
  //   });

  //   _phoneController.clear();
  //   _formKey.currentState?.reset();
  // }

  void checkAndAddDataToList(ContactPoint contactPoint) {
    if (!_contactPointList.contains(contactPoint)) {
      _contactPointList.add(contactPoint);
    }
  }

  @override
  Widget build(BuildContext context) {
    callBackToChangeParentFormState();

    if (widget.communicationSetter != null &&
        widget.returnValue &&
        (_phoneController.text.isNotEmpty ||
            _emailController.text.isNotEmpty ||
            _faxController.text.isNotEmpty) &&
        checkTheFieldsValidation() == true) {
      // final contactPoint = ContactPoint(
      //   value: _phoneController.text,
      //   system: textToContactPointSystem('Phone'),
      //   use: textToContactPointUse('Home'),
      // );

      // phone
      if (_phoneController.text.isNotEmpty) {
        checkAndAddDataToList(ContactPoint(
          value: _phoneController.text,
          system: textToContactPointSystem('Phone'),
          use: textToContactPointUse('Home'),
        ));
      }

      // email
      if (_emailController.text.isNotEmpty) {
        checkAndAddDataToList(
          ContactPoint(
            value: _emailController.text,
            system: textToContactPointSystem('Email'),
            use: textToContactPointUse('Home'),
          ),
        );
      }

      // fax
      if (_faxController.text.isNotEmpty) {
        checkAndAddDataToList(
          ContactPoint(
            value: _faxController.text,
            system: textToContactPointSystem('Fax'),
            use: textToContactPointUse('Home'),
          ),
        );
      }

      // if (!_contactPointList.contains(contactPoint)) {
      //   _contactPointList.add(contactPoint);
      //   _formKey.currentState?.reset();
      //   _phoneController.clear();
      // }

      widget.communicationSetter!(_contactPointList);
    }

    //! multiple values
    return LayoutBuilder(
      builder: (context, constraints) {
        return Form(
          key: _formKey,
          child: FormSectionLayout(
            color: widget.color,
            sectionName: 'Telecommunications',
            childern: [
              //! contact point showing section
              // SizedBox(
              //   width: constraints.maxWidth,
              //   child: _contactPointList.isEmpty
              //       ? const SizedBox()
              //       : Wrap(
              //           runSpacing: 10,
              //           spacing: 10,
              //           children: [
              //             for (var contactPoint in _contactPointList)
              //               TeleComCardWidget(
              //                 contactValue: contactPoint.value!,
              //                 onCancle: () {
              //                   setState(() {
              //                     _contactPointList.remove(contactPoint);
              //                   });
              //                 },
              //                 onTap: () {
              //                   _phoneController.text = contactPoint.value!;
              //                   setState(() {
              //                     _contactPointList.remove(contactPoint);
              //                   });
              //                 },
              //               )
              //           ],
              //         ),
              // ),

              //! required

              ColumnFormField(
                lable: 'Phone',
                maxWidth: constraints.maxWidth * 0.2,
                minWidth: 200,
                controller: _phoneController,
                onChanged: (_) {
                  callBackToChangeParentFormState();
                },
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r"[0-9]"))
                ],
                validator: (value) {
                  if (value != null &&
                      value.isNotEmpty &&
                      !value.isValidPhone) {
                    return " Enter valid phone";
                  }
                  return null;
                },
              ),
              ColumnFormField(
                lable: 'Email',
                maxWidth: constraints.maxWidth * 0.2,
                controller: _emailController,
                minWidth: 200,
                onChanged: (_) {
                  callBackToChangeParentFormState();
                },
                validator: (value) {
                  if (value != null &&
                      value.isNotEmpty &&
                      !value.isValidEmail) {
                    return "Enter valid email";
                  }
                  return null;
                },
              ),
              widget.addFax
                  ? ColumnFormField(
                      lable: 'Fax',
                      controller: _faxController,
                      maxWidth: constraints.maxWidth * 0.2,
                      minWidth: 200,
                      onChanged: (_) {
                        callBackToChangeParentFormState();
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r"[0-9]"))
                      ],
                      validator: (value) {
                        if (value != null &&
                            value.isNotEmpty &&
                            !value.isValidFax) {
                          return "Enter Valid Fax";
                        }
                        return null;
                      },
                    )
                  : const SizedBox(),
            ],
          ),
        );
      },
    );
  }
}

class TeleComCardWidget extends StatelessWidget {
  const TeleComCardWidget({
    Key? key,
    required this.contactValue,
    this.onCancle,
    this.onTap,
    this.subTitle,
  }) : super(key: key);
  final String contactValue;
  final VoidCallback? onTap;
  final VoidCallback? onCancle;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        constraints: BoxConstraints(
          maxWidth: max(constraints.maxWidth * 0.2, 200),
        ),
        child: Card(
          elevation: 5,
          child: ListTile(
            onTap: onTap,
            visualDensity: VisualDensity.compact,
            trailing: IconButton(
              onPressed: onCancle,
              tooltip: 'Delete',
              icon: const Icon(
                Icons.cancel,
                color: Colors.red,
              ),
            ),
            subtitle: Text(subTitle ??
                'Period ( ${DateFormat("y-mm-d").format(DateTime.now())} '
                    'to'
                    ' ${DateFormat("y-mm-d").format(DateTime.now())}) '),
            title: Text(contactValue),
          ),
        ),
      );
    });
  }
}
