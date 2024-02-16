import 'package:accout_checker/screen/linked_in_screen/controller/linked_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class LinkedScreen extends StatefulWidget {
  const LinkedScreen({super.key});

  @override
  State<LinkedScreen> createState() => _LinkedScreenState();
}

class _LinkedScreenState extends State<LinkedScreen> {
  LinkedInController linkedInController = Get.put(LinkedInController());
  @override
  void initState() {
    // TODO: implement initState
    linkedInController.getallLinkedIn();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Obx(
                () => Container(
                  child: linkedInController.allLikedin.isEmpty
                      ? SizedBox()
                      : linkedInController.allLikedin[0].person == true ||
                              linkedInController.allLikedin[0].person == false
                          ? Text('No Linkedin account found for this mail')
                          : Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      linkedInController
                                          .allLikedin[0].person.photoUrl),
                                ),
                                Column(
                                  children: [],
                                )
                              ],
                            ),
                ),
              ),
              MyCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  LinkedInController linkedInController = Get.put(LinkedInController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Card(
        elevation: 8.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: linkedInController.emailController,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: 'Enter mail',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  filled: true,
                  fillColor: Colors.grey[300],
                  hintStyle: TextStyle(color: Colors.grey[700]),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Add validation button logic here
                      print('Validation button pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.indigo, // Button color
                      onPrimary: Colors.white, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text('Validation'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add LinkedIn button logic here
                      print('LinkedIn button pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // Button color
                      onPrimary: Colors.white, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text('LinkedIn'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
