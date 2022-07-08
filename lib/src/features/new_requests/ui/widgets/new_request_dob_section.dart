import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'form_section_layout.dart';

class NewRequestDOBSection extends StatefulWidget {
  const NewRequestDOBSection({
    Key? key,
    this.dobSetter,
    this.returnData = false,
  }) : super(key: key);
  final bool returnData;
  final Function(DateTime? dateTime, [bool? isMultiple, int? orderofBirth])?
      dobSetter;

  @override
  State<NewRequestDOBSection> createState() => _NewRequestDOBSectionState();
}

class _NewRequestDOBSectionState extends State<NewRequestDOBSection> {
  final _dobTextEditingController = TextEditingController();
  bool isMultipleBirth = false;
  int? orderOfBirth;
  DateTime? dobDate;

  final FocusNode _dobFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _dobFocusNode.addListener(() async {
      // if (_dobFocusNode.hasFocus) {
      //   await displayDatePicker();
      // }
    });
  }

  @override
  void dispose() {
    _dobTextEditingController.dispose();
    _dobFocusNode.dispose();
    super.dispose();
  }

  displayDatePicker() async {
    final data = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(
        const Duration(days: 365 * 150),
      ),
      lastDate: DateTime.now(),
    );

    if (data != null) {
      _dobTextEditingController.text = DateFormat('MMM,d y').format(data);
      dobDate = data;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.returnData && widget.dobSetter != null) {
      widget.dobSetter!(
        dobDate,
        isMultipleBirth,
        orderOfBirth,
      );
    }
    return LayoutBuilder(builder: (context, constraints) {
      return FormSectionLayout(
        sectionName: 'Date of Birth',
        childern: [
          //! date section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'DOB',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 6),
              TextFormField(
                controller: _dobTextEditingController,
                decoration: InputDecoration(
                  isDense: true,
                  constraints:
                      BoxConstraints(maxWidth: constraints.maxWidth * 0.3),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                focusNode: _dobFocusNode,
                onTap: displayDatePicker,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter you'r dob";
                  }
                  return null;
                },
              ),
            ],
          ),

          //! Multiple birth section
          // Column(
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     const Text(
          //       'Is Multiple Birth',
          //       style: TextStyle(fontWeight: FontWeight.w600),
          //     ),
          //     const SizedBox(height: 6),
          //     Switch.adaptive(
          //       value: isMultipleBirth,
          //       onChanged: (value) {
          //         setState(() {
          //           isMultipleBirth = !isMultipleBirth;
          //         });
          //       },
          //     ),
          //   ],
          // ),
          // Visibility(
          //   visible: isMultipleBirth,
          //   child: ColumDropdownFormField(
          //     lable: 'Order of Birth',
          //     onChange: (value) {
          //       if (value != null) {
          //         orderOfBirth = int.parse(value);
          //       }
          //     },
          //     maxWidth: constraints.maxWidth * 0.05,
          //     minWidth: 55,
          //     values: const ['1', '2', '3', '4', '5', '6', '7', '8'],
          //   ),
          // ),
        ],
      );
    });
  }
}
