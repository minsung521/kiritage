import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kiritage/app/controller/controller.dart';
import 'package:kiritage/app/data/provider/cha_api.dart';
import 'package:kiritage/app/data/provider/database.dart';

class ResultPage extends GetView<ResultController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: GetX<ResultController>(
      initState: (state) {
        Get.find<ResultController>().getAll();
      },
      builder: (_) {
        final result = Data.engDict[_.post.title];

        if (result == null)
          return Center(child: Text("지원하지 않는 문화재입니다."));
        else {
          List<String> codes = result.split(" ");
          getAll(codes[0], codes[1], codes[2]).then((_) {
            //요 부분 수정
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(audioUrl),
                  Text(imageUrl.toString()),
                  Text(videoUrl),
                  Text(info)
                ],
              ),
            );
            //요 부분 수정
          });
        }
        //요 부분 수정
        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(audioUrl),
              Text(imageUrl.toString()),
              Text(videoUrl),
              Text(info)
            ],
          ),
        );
        //요 부분 수정
      },
    )));
  }
}
