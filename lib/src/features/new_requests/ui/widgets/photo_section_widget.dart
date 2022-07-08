import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'form_section_layout.dart';

class PhotoSectionWidget extends StatefulWidget {
  const PhotoSectionWidget({Key? key}) : super(key: key);

  @override
  State<PhotoSectionWidget> createState() => _PhotoSectionWidgetState();
}

class _PhotoSectionWidgetState extends State<PhotoSectionWidget> {
  PlatformFile? platformFile;

  _pickImage() async {
    final picked = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );

    if (picked != null) {
      setState(() {
        platformFile = picked.files.first;
      });
      debugPrint(picked.files.first.name);
      debugPrint("${picked.files.first.path}");
      debugPrint("${picked.files.first.extension}");
      debugPrint("${picked.files.first.size}");
      debugPrint("${picked.files.first.bytes}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormSectionLayout(
      childern: [
        TextButton(
          onPressed: () async {
            await _pickImage();
          },
          child: const Text('Pick image'),
        ),
        (platformFile != null)
            ? SizedBox(
                height: 30,
                width: 30,
                child: Image.memory(
                  platformFile!.bytes!,
                  fit: BoxFit.cover,
                ),
              )
            : const SizedBox(),
      ],
      sectionName: 'Photo',
    );
  }
}
