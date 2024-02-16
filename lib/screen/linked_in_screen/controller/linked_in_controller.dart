import 'package:accout_checker/models/linkedin_model.dart';
import 'package:accout_checker/screen/linked_in_screen/repository/linked_in_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkedInController extends GetxController {
  List<String> validMailList = [
    'chivas_30_30@hotmail.com',
    'charris7981@hotmail.com',
    'shaharyarqureshi10@hotmail.com',
    'charden3942@hotmail.com',
    'chica_lays12@hotmail.com',
    'jend068@hotmail.com',
    'dramaxaddict78@hotmail.com',
    'jacquehkcd@hotmail.com',
    'mkrtchyanandranik817@hotmail.com',
    'hoesjsou@hotmail.com',
  ];

  final TextEditingController emailController = TextEditingController();

  var allLikedin = [].obs;

  Future<void> getallLinkedIn() async {
    var profile = await LinkedInRepository().getProfile("armym324@gmail.com");
    print(profile.toString());
    allLikedin.clear();
    allLikedin.add(profile);
  }
}
