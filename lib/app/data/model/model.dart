class MyModel {
  String title = "";
  String lat = "";
  String lng = "";

  MyModel({
    lat,
    lng,
    title,
  });

  MyModel.fromJson(Map<String, dynamic> json) {
    title = json['responses'][0]['landmarkAnnotations'][0]['description'];
    lat = json['responses'][0]['landmarkAnnotations'][0]['locations'][0]
            ['latLng']['latitude']
        .toString();
    lng = json['responses'][0]['landmarkAnnotations'][0]['locations'][0]
            ['latLng']['longtitude']
        .toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.title;
    return data;
  }
}
