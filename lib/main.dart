import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kiritage/app/routes/home_route.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    getPages: AppPages.routes,
    initialRoute: Routes.HOME,
  ));
}
