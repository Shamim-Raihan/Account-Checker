import 'package:accout_checker/screen/csv_and_email_validation_screen/controller/csv_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class CsvScreen extends StatelessWidget {
  CsvScreen({super.key});

  final CsvController csvController = Get.put(CsvController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              csvController.pickCSV();
            }, child: Text("Upload Csv"))
          ],
        ),
      ),
    );
  }
}