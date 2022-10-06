// class WaterModel {
//   int? data;
//
//   WaterModel({this.data});
//
//   WaterModel.fromJson(Map<String, dynamic> json) {
//     data = json['data'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['data'] = this.data;
//     return data;
//   }
// }
class WaterModel {
  Sensor? sensor;

  WaterModel({this.sensor});

  WaterModel.fromJson(Map<String, dynamic> json) {
    sensor =
        json['Sensor'] != null ? new Sensor.fromJson(json['Sensor']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sensor != null) {
      data['Sensor'] = this.sensor!.toJson();
    }
    return data;
  }
}

class Sensor {
  double? data;

  Sensor({this.data});

  Sensor.fromJson(Map<String, dynamic> json) {
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.data;
    return data;
  }
}
