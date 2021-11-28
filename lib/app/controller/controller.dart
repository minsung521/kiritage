import 'package:get/get.dart';
import 'package:kiritage/app/data/model/model.dart';
import 'package:kiritage/app/data/repository/result_repository.dart';

class ResultController extends GetxController {
  final MyRepository repository;
  ResultController({required this.repository}) : assert(repository != null);

  final _postsList = <MyModel>[].obs;
  final _post = MyModel().obs;

  get postList => this._postsList.value;
  set postList(value) => this._postsList.value = value;
  get post => this._post.value;
  set post(value) => this._post.value = value;

  Future getAll() async {
    repository.getAll().then((data) => this.post = data);
  }

  Future delay() async {
    await Future.delayed(Duration(seconds: 3));
  }
}
