import 'package:get/get.dart';
import 'package:kiritage/app/ui/camera/camera.dart';
import 'package:kiritage/app/ui/camera/img_check.dart';
import 'package:kiritage/app/ui/edu/edu_content.dart';
import 'package:kiritage/app/ui/edu/edu_list.dart';
import 'package:kiritage/app/ui/home/home.dart';
import 'package:kiritage/app/ui/login/login.dart';
import 'package:kiritage/app/ui/result/result_page.dart';
import 'package:kiritage/app/ui/search/search.dart';

abstract class Routes {
  static const HOME = '/';
  static const EDULIST = '/edulist';
  static const EDUCONTENT = '/educontent';
  static const LOGIN = '/login';
  static const CAMERA = '/cam';
  static const IMGCHECK = '/imgcheck';
  static const RESULT = '/result';
  static const SEARCH = '/search';
}

class AppPages {
  static final routes = [
    GetPage(name: Routes.HOME, page: () => Home()),
    GetPage(name: Routes.EDUCONTENT, page: () => EduContent()),
    GetPage(name: Routes.EDULIST, page: () => EduList()),
    GetPage(name: Routes.LOGIN, page: () => Login()),
    GetPage(name: Routes.CAMERA, page: () => Camera()),
    GetPage(name: Routes.IMGCHECK, page: () => ImgCheck()),
    GetPage(name: Routes.RESULT, page: () => Result()),
    GetPage(name: Routes.SEARCH, page: () => Search()),
  ];
}
