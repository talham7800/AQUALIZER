import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fyp/widget/aquamodel.dart';
import 'package:fyp/widget/constant.dart';
import 'package:http/http.dart' as http;

class HttpServices with ChangeNotifier {
  HttpServices._internal();
  factory HttpServices() {
    return _instance;
  }
  static final HttpServices _instance = HttpServices._internal();
  //register service:
  Future<WaterModel> getphLevel() async {
    String url = ApiConst.BaseUrl;
    var userHeader = {"Accept": "application/json"};
    http.Response response =
        await http.get(Uri.parse(url), headers: userHeader);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);

      print(data);
      return WaterModel.fromJson(data);
    } else {
      throw Exception('Error');
    }
  }
}
