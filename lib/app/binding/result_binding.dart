import 'package:get/get.dart';
import 'package:kiritage/app/controller/controller.dart';
import 'package:kiritage/app/data/provider/google_api.dart';
import 'package:kiritage/app/data/repository/result_repository.dart';
import 'package:http/http.dart' as http;

class ResultBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResultController>(() {
      return ResultController(
          repository:
              MyRepository(apiClient: MyApiClient(httpClient: http.Client())));
    });
  }
}
