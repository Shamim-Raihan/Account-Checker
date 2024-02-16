import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CsvController extends GetxController {
  Future<void> pickCSV() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['csv'],
      );

      if (result != null) {
        String filePath = result.files.single.path!;
        print('Selected CSV file: $filePath');
        final input = File(filePath).openRead();
        final fields = await input
            .transform(utf8.decoder)
            .transform(CsvToListConverter())
            .toList();
            fields.removeAt(0);
        log('fasdfadss: ' +  jsonEncode(fields[0]));
      } else {
        // User canceled the picker
        print('User canceled the file picker');
      }
    } catch (e) {
      print('Error picking CSV file: $e');
    }
  }
}
