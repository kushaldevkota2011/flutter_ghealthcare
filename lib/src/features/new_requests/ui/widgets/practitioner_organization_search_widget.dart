import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';
import '../../new_request.dart';

class PractitionerOrganizationSearch extends StatefulWidget {
  const PractitionerOrganizationSearch({Key? key}) : super(key: key);

  @override
  State<PractitionerOrganizationSearch> createState() =>
      _PractitionerOrganizationSearchState();
}

class _PractitionerOrganizationSearchState
    extends State<PractitionerOrganizationSearch> {
  final TextEditingController _npiController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PractitionerBloc, PractitionerState>(
      listener: (context, state) {
        if (state.status ==
            PractitionerStateStatus.PractitionerOrganizationSearchSuceess) {
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
                    maxHeight: 200,
                    maxWidth: 500,
                  ),
                  child: ListView.builder(
                    itemBuilder: (ctx, i) => Material(
                      color: Colors.transparent,
                      child: ListTile(
                        onTap: () {
                          context.read<PractitionerBloc>().add(
                                SelectPractitionerOrganizationProfile(
                                  organization: state.organizationList![i],
                                ),
                              );
                          Navigator.pop(context);
                        },
                        title: Text(
                          "${state.organizationList![i].basic?.name ?? ''}"
                          " (${state.organizationList![i].number ?? ''})",
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: Color(0xff333333),
                          ),
                        ),
                        subtitle: Text(
                          "${state.organizationList![i].addresses?.first.address1 ?? ''},"
                          " ${state.organizationList![i].addresses?.first.city ?? ''}",
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xff333333),
                          ),
                        ),
                      ),
                    ),
                    itemCount: state.organizationList?.length ?? 0,
                  ),
                ),
              ),
            );
          });
        }
      },
      builder: (context, state) {
        return LayoutBuilder(builder: (context, constraints) {
          return Form(
            key: _formKey,
            child: FormSectionLayout(
              sectionName: 'Seach Organization',
              childern: [
                ColumnFormField(
                  lable: 'Seach by NPI',
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
                    FilteringTextInputFormatter.allow(
                      RegExp(r"[0-9]"),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: TextButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() == true) {
                        context.read<PractitionerBloc>().add(
                              SearchPractitionerOrganizationProfile(
                                  npi: _npiController.text),
                            );
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
                ),
              ],
            ),
          );
        });
      },
    );
  }

  @override
  void dispose() {
    _npiController.dispose();
    super.dispose();
  }
}
