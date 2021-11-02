import 'dart:convert';
import 'dart:io' as Io;
import 'package:kiritage/app/data/provider/google_api.dart';
import 'package:kiritage/app/ui/camera/camera.dart';

class MyRepository {
  final MyApiClient apiClient;

  MyRepository({required this.apiClient}) : assert(apiClient != null);

  Future getAll() async {
    final bytes = await Io.File(image!.path).readAsBytes();
    String base64Image = base64Encode(bytes);

    return apiClient.postRequest(base64Image);
  }
}
