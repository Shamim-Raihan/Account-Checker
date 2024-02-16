import 'dart:convert';

import 'package:accout_checker/models/linkedin_model.dart';
import 'package:http/http.dart' as http;

class LinkedInRepository {
  Future<LinkedInModel?> getProfile(String email) async {
    final apiKey = 'sk_live_65cf9cd2d746d807d07e41a6_key_oa0rnnwz90f';
    final apiUrl = 'https://api.reversecontact.com/enrichment';

    // try {
    final response = await http.get(
      Uri.parse('$apiUrl?apikey=$apiKey&email=$email'),
    );

    if (response.statusCode == 200) {
      final dynamic data = json.decode(response.body);
      if (data is Map<String, dynamic>) {
        return LinkedInModel.fromJson(data);
      } else {
        throw Exception('Invalid data format');
      }
    } else {
      throw Exception('Failed to fetch data: ${response.reasonPhrase}');
    }
    // } catch (e) {
    //   throw Exception('Error: $e');
    // }
  }
}
