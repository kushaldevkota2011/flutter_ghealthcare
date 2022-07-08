import 'dart:math';

import 'package:fhir/r5.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/core.dart';
import 'widgets.dart';

/// [isBillingAddress] and [isSameAddress] are used only in case of billing addreess
///
/// [isBillingAddress] is true the the subtitle widget is shown and when the [isSameAddress]
/// is set the first address from [addressList] will be set to the user parameters,
class NewRequestAddressSection extends StatefulWidget {
  const NewRequestAddressSection({
    Key? key,
    this.color,
    this.addressSetter,
    this.isReturnValue = false,
    this.validateData = false,
    this.formKey,
    this.invalidFormSetter,
    this.isMutipleAddress = false,
    this.addressList,
    this.name,
    this.isBillingAddress = false,
    this.isSameAddress = false,
    this.toggleSameAsCheckBox,
    this.checkBoxName,
  }) : super(key: key);
  final Color? color;
  final ValueSetter<List<Address>>? addressSetter;
  final bool isMutipleAddress;
  final List<Address>? addressList;
  final String? name;
  final bool isBillingAddress;
  final bool isSameAddress;
  final ValueSetter<bool?>? toggleSameAsCheckBox;
  final String? checkBoxName;

  /// [isReturnValue] = true then in this case the parent widget is currently in the
  /// state of validating the form and wants the validation confirmation and the data
  /// from this widget.
  ///
  /// check the validation of the form and if valid then return data using the
  /// [addressSetter]. Else return [false] value using the [invalidFormSetter]
  final bool isReturnValue;

  /// [validateData] this is used when the parent widget check for the validation
  /// of the form field it used.
  final bool validateData;
  final GlobalKey<FormState>? formKey;
  final ValueChanged<bool>? invalidFormSetter;

  @override
  State<NewRequestAddressSection> createState() =>
      _NewRequestAddressSectionState();
}

class _NewRequestAddressSectionState extends State<NewRequestAddressSection> {
  final _streetController = TextEditingController();
  final _cityController = TextEditingController();
  final _stateController = TextEditingController();
  final _countryController = TextEditingController();
  final _zipController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  late List<Address> _addressList = [];

  @override
  void initState() {
    super.initState();
    _addressList = [];
    checkForBillingAndSetController();
  }

  Address makeAddress() {
    return Address(
      city: _cityController.text,
      country: _countryController.text,
      state: _stateController.text,
      line: [_streetController.text],
      postalCode: _zipController.text,
      type: AddressType.physical,
      use: widget.isBillingAddress ? AddressUse.billing : AddressUse.home,
    );
  }

  void checkForBillingAndSetController() {
    if (widget.isBillingAddress &&
        widget.isSameAddress &&
        widget.addressList != null &&
        widget.addressList!.isNotEmpty) {
      _streetController.text = widget.addressList!.first.line?.first ?? '';
      _cityController.text = widget.addressList!.first.city ?? '';
      _stateController.text = widget.addressList!.first.state ?? '';
      _countryController.text = widget.addressList!.first.country ?? '';
      _zipController.text = widget.addressList!.first.postalCode ?? '';
    }
  }

  void clearControllerText() {
    _streetController.clear();
    _cityController.clear();
    _stateController.clear();
    _countryController.clear();
    _zipController.clear();
    _formKey.currentState?.reset();
  }

  @override
  void dispose() {
    _streetController.dispose();
    _cityController.dispose();
    _stateController.dispose();
    _countryController.dispose();
    _zipController.dispose();
    super.dispose();
  }

  /// when the user type something in formfield and there is [widget.validateData]
  /// is set then this function will check for the validtion of the form.
  ///
  /// If the form is valid it will return true.
  bool? checkTheFieldsValidation() {
    if ((_zipController.text.isNotEmpty ||
        _stateController.text.isNotEmpty ||
        _streetController.text.isNotEmpty ||
        _cityController.text.isNotEmpty ||
        _countryController.text.isNotEmpty)) {
      return _formKey.currentState?.validate();
    }
    return null;
  }

  bool isAllEmpty() {
    if (_zipController.text.isEmpty &&
        _stateController.text.isEmpty &&
        _streetController.text.isEmpty &&
        _cityController.text.isEmpty &&
        _countryController.text.isEmpty) {
      return true;
    }
    return false;
  }

  callBackToChangeParentValidation() {
    // checks either the form fields is vaild. If not valid, and invalid setter is present
    // it will call the invalidFormSetter
    if (widget.invalidFormSetter != null) {
      if (checkTheFieldsValidation() == false) {
        widget.invalidFormSetter!(true);
      } else {
        widget.invalidFormSetter!(false);

        /// if all fields are empty then we have to remove the error messages
        if (isAllEmpty()) {}
        _formKey.currentState?.reset();
      }
    }
  }

  void _addToListAndClearController() {
    setState(() {
      _addressList.add(makeAddress());
    });

    clearControllerText();

    _formKey.currentState?.reset();
  }

  void didChangeDependency() {
    debugPrint("changing in dependency");
  }

  @override
  void didUpdateWidget(covariant NewRequestAddressSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.addressList != null && widget.addressList!.isNotEmpty) {
      // this will convert the provided addresses use into the billing address
      if (widget.isBillingAddress) {
        for (var address in widget.addressList!) {
          var _convertedAddress = Address(
            city: address.city,
            cityElement: address.cityElement,
            country: address.country,
            countryElement: address.countryElement,
            district: address.district,
            districtElement: address.districtElement,
            extension_: address.extension_,
            id: address.id,
            line: address.line,
            lineElement: address.lineElement,
            period: address.period,
            postalCode: address.postalCode,
            postalCodeElement: address.postalCodeElement,
            state: address.state,
            stateElement: address.stateElement,
            text: address.text,
            textElement: address.textElement,
            type: address.type,
            typeElement: address.typeElement,
            use: AddressUse.billing,
            useElement: address.useElement,
          );
          // check if the address is already present
          if (!_addressList.contains(_convertedAddress)) {
            _addressList.add(_convertedAddress);
          }
        }
      } else {
        _addressList = widget.addressList!;
      }
    }
    checkForBillingAndSetController();
    if (widget.isReturnValue && widget.addressSetter != null) {
      if (_addressList.isEmpty && !isAllEmpty()) {
        widget.addressSetter!([makeAddress()]);
      } else {
        widget.addressSetter!(_addressList);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    callBackToChangeParentValidation();
    if (widget.addressSetter != null &&
        widget.isReturnValue
        //  &&
        // _addressList.isNotEmpty
        &&
        !isAllEmpty() &&
        checkTheFieldsValidation() == true) {
      final address = makeAddress();

      if (!_addressList.contains(address)) {
        _addressList.add(address);
        clearControllerText();
        _formKey.currentState?.reset();
      }

      widget.addressSetter!(_addressList);
    }

    return LayoutBuilder(builder: (context, constraints) {
      return Form(
        key: _formKey,
        child: FormSectionLayout(
          sectionName: widget.name ?? "Address",
          subTitleWidget: widget.isBillingAddress
              ? SizedBox(
                  width: 200,
                  child: CheckboxListTile(
                    value: widget.isSameAddress,
                    onChanged: widget.toggleSameAsCheckBox,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                    dense: true,
                    title: Text(widget.checkBoxName ?? 'Same As Home Address'),
                  ),
                )
              : null,
          color: widget.color,
          childern: [
            // goes to the line field
            //! required

            SizedBox(
              width: constraints.maxWidth,
              child: _addressList.isEmpty
                  ? const SizedBox()
                  : Wrap(
                      children: [
                        for (var address in _addressList)
                          AddressCardWidget(
                            fullAddress:
                                '${address.line!.first}, ${address.city},'
                                ' ${address.state}, ${address.postalCode}'
                                ' ${address.country}',
                            onCancle: () {
                              setState(() {
                                _addressList.remove(address);
                              });
                            },
                            onTap: () {
                              if (_formKey.currentState?.validate() == true) {
                                setState(() {
                                  _addressList.add(
                                    Address(
                                      city: _cityController.text,
                                      country: _countryController.text,
                                      state: _streetController.text,
                                      line: [_streetController.text],
                                      postalCode: _zipController.text,
                                      type: AddressType.physical,
                                      use: AddressUse.home,
                                    ),
                                  );
                                });
                              }
                              _streetController.text = address.line!.first;
                              _cityController.text = address.city!;
                              _stateController.text = address.state!;
                              _countryController.text = address.country!;
                              _zipController.text = address.postalCode!;

                              setState(() {
                                _addressList.remove(address);
                              });
                            },
                          ),
                      ],
                    ),
            ),

            PlacesesAutoComplete(
              valueSetter: (address) {
                _streetController.text = address.line?.first ?? '';
                _cityController.text = address.city ?? '';
                _stateController.text = address.state ?? '';
                _countryController.text = address.country ?? '';
                _zipController.text = address.postalCode ?? '';
              },
            ),

            ColumnFormField(
              lable: 'Street Address',
              maxWidth: constraints.maxWidth * 0.25,
              minWidth: 170,
              controller: _streetController,
              onChanged: (_) {
                callBackToChangeParentValidation();
              },
              validator: (value) {
                if (value == null) {
                  return "Enter Value";
                } else if (!value.isValidStreet) {
                  return "Enter Valid Street Name";
                }
                return null;
              },
            ),
            //! required
            ColumnFormField(
              lable: 'City',
              maxWidth: constraints.maxWidth * 0.1,
              minWidth: 100,
              controller: _cityController,
              onChanged: (_) {
                callBackToChangeParentValidation();
              },
              validator: (value) {
                if (value == null) {
                  return "Enter value";
                } else if (!value.isValidStreet) {
                  return "Enter valid Street Name";
                }
                return null;
              },
            ),
            //! required
            ColumnFormField(
              lable: 'State',
              maxWidth: constraints.maxWidth * 0.1,
              minWidth: 100,
              controller: _stateController,
              onChanged: (_) {
                callBackToChangeParentValidation();
              },
              validator: (value) {
                if (value == null) {
                  return "Enter Value";
                } else if (!value.isValidState) {
                  return "Enter Valid State Name";
                }
                return null;
              },
            ),
            //! required
            ColumnFormField(
              lable: 'Country',
              maxWidth: constraints.maxWidth * 0.1,
              minWidth: 100,
              controller: _countryController,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z ]"))
              ],
              onChanged: (_) {
                callBackToChangeParentValidation();
              },
              validator: (value) {
                if (value == null) {
                  return "Enter value";
                } else if (!value.isValidCountry) {
                  return "Enter Valid country name";
                }
                return null;
              },
            ),
            //! required
            ColumnFormField(
              lable: 'Zip Code',
              maxWidth: constraints.maxWidth * 0.1,
              minWidth: 100,
              controller: _zipController,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r"[0-9\-]"))
              ],
              onChanged: (_) {
                callBackToChangeParentValidation();
              },
              validator: (value) {
                if (value == null) {
                  return "Enter value";
                } else if (!value.isValidZIPCode) {
                  return "Invalid Zip Code";
                }
                return null;
              },
            ),

            //! required default is 'Home'
            // ColumDropdownFormField(
            //   lable: 'Use',
            //   onChange: (value) {},
            //   values: const ['Home', 'Work', 'Temp', 'Old', 'Billing'],
            //   maxWidth: constraints.maxWidth * 0.1,
            //   minWidth: 100,
            // ),

            //! type --> default is physical

            // ColumDropdownFormField(
            //   lable: 'Type',
            //   onChange: (value) {},
            //   values: const ['Physical', 'Postal', 'Both'],
            //   maxWidth: constraints.maxWidth * 0.1,
            //   minWidth: 110,
            // ),

            // const TimePeroidSelectionWidget(),

            widget.isMutipleAddress
                ? AddressEditRemoveButton(
                    title: 'Add New',
                    onPressed: () {
                      if (_formKey.currentState?.validate() == true) {
                        _addToListAndClearController();
                      }
                    },
                  )
                : const SizedBox(),
          ],
        ),
      );
    });
  }
}

class AddressEditRemoveButton extends StatelessWidget {
  const AddressEditRemoveButton(
      {Key? key, this.color, this.onPressed, required this.title})
      : super(key: key);
  final String title;
  final VoidCallback? onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 23.0),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
        style: TextButton.styleFrom(
          backgroundColor: color ?? Colors.green,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          visualDensity: VisualDensity.compact,
        ),
      ),
    );
  }
}

class AddressCardWidget extends StatelessWidget {
  const AddressCardWidget({
    Key? key,
    required this.fullAddress,
    this.onCancle,
    this.onTap,
    this.subTitle,
  }) : super(key: key);
  final String fullAddress;
  final VoidCallback? onTap;
  final VoidCallback? onCancle;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        constraints: BoxConstraints(
          maxWidth: max(constraints.maxWidth * 0.2, 200),
          minWidth: 150,
        ),
        child: Card(
          elevation: 5,
          child: ListTile(
            onTap: onTap,
            visualDensity: VisualDensity.compact,
            trailing: IconButton(
              onPressed: onCancle,
              icon: const Icon(
                Icons.cancel,
                color: Colors.red,
              ),
            ),
            // subtitle: Text(subTitle ??
            //     'Period ( ${DateFormat("y-mm-d").format(DateTime.now())} '
            //         'to'
            //         ' ${DateFormat("y-mm-d").format(DateTime.now())}) '),
            title: Text(fullAddress),
          ),
        ),
      );
    });
  }
}
