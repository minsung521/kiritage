import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kiritage/app/data/model/model.dart';

String result = "";

class MyApiClient {
  final String API_KEY = "AIzaSyBTNPP6eev922gwIJrejbc4Xh0pJ_SpnMI";
  final http.Client httpClient;
  MyApiClient({required this.httpClient});

  Future postRequest(String image) async {
    String url =
        'https://vision.googleapis.com/v1/images:annotate?key=$API_KEY';
    final body = {
      "requests": [
        {
          "image": {"content": image},
          "features": [
            {"maxResults": 10, "type": "LANDMARK_DETECTION"},
          ]
        }
      ]
    };

    http.Response response =
        await httpClient.post(Uri.parse(url), body: json.encode(body));

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);

      MyModel myModel = MyModel.fromJson(jsonResponse);

      return myModel;
    } else {
      print("Error");
    }
  }
}
