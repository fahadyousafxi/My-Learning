import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'dart:io';
class testForFiles extends StatefulWidget {
  const testForFiles({Key? key}) : super(key: key);

  @override
  State<testForFiles> createState() => _testForFilesState();
}

class _testForFilesState extends State<testForFiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            FilePickerResult? result = await FilePicker.platform.pickFiles();

            if (result != null) {
              File file = File(result.files.single.path.toString());
              print(file);
            } else {
              // User canceled the picker
            }
          },
          child: Icon(Icons.flag),
        ),
      ),
    );
  }
}
