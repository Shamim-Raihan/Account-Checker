// To parse this JSON data, do
//
//     final csvModel = csvModelFromJson(jsonString);

import 'dart:convert';

List<String> csvModelFromJson(String str) =>
    List<String>.from(json.decode(str).map((x) => x));

String csvModelToJson(List<String> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x)));
