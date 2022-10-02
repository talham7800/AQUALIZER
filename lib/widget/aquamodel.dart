// class aqua {
//   Test? test;
//
//   aqua({this.test});
//
//   aqua.fromJson(Map<String, dynamic> json) {
//     test = json['test'] != null ? new Test.fromJson(json['test']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.test != null) {
//       data['test'] = this.test!.toJson();
//     }
//     return data;
//   }
// }
//
// class Test {
//   double? float;
//   int? int;
//
//   Test({this.float, this.int});
//
//   Test.fromJson(Map<String, dynamic> json) {
//     float = json['float'];
//     int = json['int'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['float'] = this.float;
//     data['int'] = this.int;
//     return data;
//   }
// }
