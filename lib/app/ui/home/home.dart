import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kiritage/app/routes/home_route.dart';
import 'package:kiritage/app/ui/UiAsset.dart';
import 'package:kiritage/app/ui/home/searchbar.dart';

import 'menucartds.dart';

final font = 'SDChildFund';
final username = "홍길동"; // getx-data 옮기기

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height * (190 / UiAssets.xdheight),
            ),
            Text(
              "안녕하세요,",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            Text(
              "${username}님",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            SizedBox(
              height: size.height * (190 / UiAssets.xdheight),
            ),
            SearchBar(size: size),
            SizedBox(
              height: size.width * (35 / UiAssets.xdwidth),
            ),
            MenuCards(size: size),
            SizedBox(
              height: size.height * (100 / UiAssets.xdheight),
            ),
            FloatingActionButton(
              onPressed: () {
                Get.toNamed(Routes.CAMERA);
              },
              child: const Icon(Icons.center_focus_weak_outlined),
            )
          ],
        ),
      ),
    );
  }
}
