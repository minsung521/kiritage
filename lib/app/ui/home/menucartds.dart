import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kiritage/app/routes/home_route.dart';

import '../UiAsset.dart';

class MenuCards extends StatelessWidget {
  const MenuCards({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * (40 / UiAssets.xdwidth)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child: Container(
              height: size.height * (120.0 / UiAssets.xdheight),
              width: size.width * (160.0 / UiAssets.xdwidth),
              decoration: BoxDecoration(
                color: Color(0xffFD6F96),
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "교육",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            onTap: () {
              Get.toNamed(Routes.EDULIST);
            },
          ),
          InkWell(
            child: Container(
              height: size.height * (120.0 / UiAssets.xdheight),
              width: size.width * (160.0 / UiAssets.xdwidth),
              decoration: BoxDecoration(
                color: Color(0xffFFEBA1),
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "질문",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Color(0xff707070),
                  ),
                ),
              ),
            ),
            onTap: () {
              Get.toNamed(Routes.QUESTION);
            },
          ),
        ],
      ),
    );
  }
}
