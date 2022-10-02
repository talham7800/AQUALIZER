// import 'dart:convert';
//
// import 'package:fyp/widget/aquamodel.dart';
// import 'package:fyp/widget/constant.dart';
// import 'package:http/http.dart' as http;
//
// class HttpServices {
//   //register service:
//   Future<aqua?> phLevel() async {
//     // final prefs = SharedPreferences.getInstance();
//     // final SharedPreferences _pref = await prefs;
//     String url = ApiConst.BaseUrl;
//     var userHeader = {"Accept": "application/json"};
//     final response = await http.post(Uri.parse('$url'), headers: userHeader);
//     if (response.statusCode == 200) {
//       // var data = jsonDecode(response.body.toString());
//       var data = json.decode(response.body);
//       var aquavalue = aqua.fromJson(data);
//       print(aquavalue);
//     } else {
//       print('Error');
//     }
//   }
// }
