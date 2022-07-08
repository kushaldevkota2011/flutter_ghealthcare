import 'package:flutter/material.dart';
import 'package:raidon_fhir/constraints.dart';

import 'form_section_name_widget.dart';

/// [subTitleWidget] will be displayed along side with the [sectionName]
///
class FormSectionLayout extends StatelessWidget {
  const FormSectionLayout({
    Key? key,
    required this.childern,
    required this.sectionName,
    this.color,
    this.displaySectionName = true,
    this.message,
    this.subTitleWidget,
  }) : super(key: key);
  final String sectionName;
  final List<Widget> childern;
  final Color? color;
  final bool displaySectionName;
  final String? message;
  final Widget? subTitleWidget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 4,
        color: kPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //! form section name
              displaySectionName
                  ? Wrap(
                      children: [
                        Tooltip(
                          message: message ?? '',
                          child: FormSectionNameWidget(
                            sectionName: sectionName,
                            color: color,
                          ),
                        ),
                        subTitleWidget ?? const SizedBox(),
                      ],
                    )
                  : const SizedBox(),
              SizedBox(height: displaySectionName ? 10 : 0),

              //! form data
              Wrap(
                spacing: 16,
                runSpacing: 10,
                children: childern,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
