import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kiritage/app/ui/UiAsset.dart';
import 'package:kiritage/app/ui/home/searchbar.dart';

class Question extends StatelessWidget {
  const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          SizedBox(
            height: size.height * (20 / UiAssets.xdheight),
          ),
          Text(
            "질문하기",
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          SizedBox(
            height: size.height * (30 / UiAssets.xdheight),
          ),
          SearchBar(size: size),
          SizedBox(
            height: size.height * (10 / UiAssets.xdheight),
          ),
        ],
      ),
    ));
  }
}
