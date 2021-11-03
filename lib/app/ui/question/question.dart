import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kiritage/app/ui/UiAsset.dart';
import 'package:kiritage/app/ui/home/searchbar.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

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
            height: size.height * (150 / UiAssets.xdheight),
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
            height: size.height * (48 / UiAssets.xdheight),
          ),
          ExpansionTileCard(
            title: Text("다보탑 이야기가 궁금해요"),
            leading: CircleAvatar(
              child: Text("Q"),
            ),
            children: [Text("이후 업데이트가 됨에 따라 답변드리도록 하겠습니다")],
          ),
          ExpansionTileCard(
            title: Text("다보탑 이야기가 궁금해요"),
            leading: CircleAvatar(
              child: Text("Q"),
            ),
            children: [Text("이후 업데이트가 됨에 따라 답변드리도록 하겠습니다")],
          ),
          ExpansionTileCard(
            title: Text("다보탑 이야기가 궁금해요"),
            leading: CircleAvatar(
              child: Text("Q"),
            ),
            children: [Text("이후 업데이트가 됨에 따라 답변드리도록 하겠습니다")],
          ),
          ExpansionTileCard(
            title: Text("다보탑 이야기가 궁금해요"),
            leading: CircleAvatar(
              child: Text("Q"),
            ),
            children: [Text("이후 업데이트가 됨에 따라 답변드리도록 하겠습니다")],
          ),
        ],
      ),
    ));
  }
}
