import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';
import '../../new_request.dart';

class PractitionerSearch extends StatefulWidget {
  const PractitionerSearch({Key? key}) : super(key: key);

  @override
  State<PractitionerSearch> createState() => _PractitionerSearchState();
}

class _PractitionerSearchState extends State<PractitionerSearch> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNamecontroller = TextEditingController();
  final TextEditingController _npiController = TextEditingController();

  bool hasError = false;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNamecontroller.dispose();
    _npiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PractitionerBloc, PractitionerState>(
      listener: (context, state) {
        if (state.status == PractitionerStateStatus.PractitionerSearchSuceess) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            showDialog(
              context: context,
              builder: (context) => Center(
                child: Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: const BoxConstraints(
                    maxHeight: 500,
                    maxWidth: 500,
                  ),
                  child: ListView.builder(
                    itemBuilder: (ctx, i) => Material(
                      color: Colors.transparent,
                      child: ListTile(
                        onTap: () {
                          context.read<PractitionerBloc>().add(
                                SelectPractitionerProfile(
                                  practitioner: state.practitionerList![i],
                                ),
                              );
                          Navigator.pop(context);
                        },
                        title: Text(
                          "${state.practitionerList![i].basic?.name ?? ''}"
                          " (${state.practitionerList![i].number ?? ''})",
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: Color(0xff333333),
                          ),
                        ),
                        subtitle: Text(
                          "${state.practitionerList![i].addresses?.first.address1 ?? ''},"
                          " ${state.practitionerList![i].addresses?.first.city ?? ''}",
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xff333333),
                          ),
                        ),
                      ),
                    ),
                    itemCount: state.practitionerList?.length ?? 0,
                  ),
                ),
              ),
            );
          });
        }
      },
      builder: (context, state) {
        return Form(
          key: _formKey,
          child: LayoutBuilder(builder: (context, constraints) {
            return FormSectionLayout(
              childern: [
                ColumnFormField(
                  lable: 'First Name',
                  maxWidth: constraints.maxWidth * 0.2,
                  controller: _firstNameController,
                  validator: (value) {
                    return null;
                  },
                ),
                ColumnFormField(
                  lable: 'Last Name',
                  controller: _lastNamecontroller,
                  maxWidth: constraints.maxWidth * 0.2,
                  validator: (value) {
                    return null;
                  },
                ),
                ColumnFormField(
                  lable: 'NPI',
                  controller: _npiController,
                  maxWidth: constraints.maxWidth * 0.2,
                  validator: (value) {
                    if (value != null &&
                        value.isNotEmpty &&
                        !value.isValidNPI) {
                      return "Enter valid NPI";
                    }
                    return null;
                  },
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r"[0-9]"))
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    hasError
                        ? Text(
                            'Enter at least one search parameter*',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(color: Colors.red),
                          )
                        : const SizedBox(height: 20),
                    TextButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() == true) {
                          setState(() {
                            hasError = false;
                          });
                          context.read<PractitionerBloc>().add(
                                SearchPractitonerProfile(
                                  firstTime: _firstNameController.text,
                                  lastName: _lastNamecontroller.text,
                                  number: _npiController.text,
                                ),
                              );
                        }
                        if (_firstNameController.text.isEmpty &&
                            _npiController.text.isEmpty &&
                            _lastNamecontroller.text.isEmpty) {
                          setState(() {
                            hasError = true;
                          });
                        } else {
                          setState(() {
                            hasError = false;
                          });
                        }
                      },
                      child: const Text(
                        'Search',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
              sectionName: 'Search Pracitioner',
            );
          }),
        );
      },
    );
  }
}
