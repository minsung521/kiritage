import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';
import 'package:kiritage/app/ui/UiAsset.dart';

File? image;

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  final picker = ImagePicker();

  Future getImage(ImageSource imageSource) async {
    final pickedFile = await picker.getImage(source: imageSource);
    setState(() {
      image = File(pickedFile!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height * (190 / UiAssets.xdheight),
            ),
            Text(
              "갤러리 내 이미지",
              style: TextStyle(fontSize: 36),
            ),
            Text(
              "사용을 권장합니다!",
              style: TextStyle(fontSize: 36),
            ),
            SizedBox(
              height: size.height * (20 / UiAssets.xdheight),
            ),
            Text(
              "실내 환경에선 카메라를 통한",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "문화재 촬영이 어려운 관계로 갤러리 내의",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "예시 이미지를 활용해주세요!",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: size.height * (300 / UiAssets.xdheight),
            ),
            Container(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * (40 / UiAssets.xdwidth)),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff6F69AC),
                        elevation: 3.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Container(
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(26, 12, 26, 12),
                          child: Center(
                            child: Text(
                              "갤러리 이미지 불러오기",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * (12 / UiAssets.xdheight),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffE2E1EE),
                        elevation: 3.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Container(
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(26, 12, 26, 12),
                          child: Center(
                            child: Text(
                              "카메라",
                              style: TextStyle(
                                color: Color(0xff5E5E5E),
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
