import 'package:flutter/material.dart';
import 'package:kiritage/app/data/provider/cha_api.dart';
import 'package:kiritage/app/data/provider/database.dart';
import 'package:kiritage/app/ui/home/searchbar.dart';
import 'package:kiritage/app/ui/UiAsset.dart';
import 'package:kiritage/app/ui/result/audio.dart';
import 'package:kiritage/app/data/provider/cha_api.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  String? result;

  @override
  void initState() {
    super.initState();

    result = Data.dict[SearchBar.myController.text];

    if (result != null) {
      List<String> codes = result!.split(" ");
      getAll(codes[0], codes[1], codes[2]).whenComplete(() => setState(() {}));
    }
  }

  @override
  Widget build(BuildContext context) {
    final imageTemp = imageUrl;
    imageUrl = [];
    final infoTemp = info;
    info = "";

    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: size.height * (373 / UiAssets.xdheight),
            width: size.width,
            child: imageTemp.length == 0
                ? Center(child: Text("사진이 없습니다!"))
                : Stack(
                    children: [
                      Center(
                          child: Image.network(imageTemp[0],
                              fit: BoxFit.fitWidth)),
                      Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black,
                          Colors.transparent,
                        ],
                      ))),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "$name",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ))
                    ],
                  ),
          ),
          SizedBox(
            height: size.height * (29 / UiAssets.xdheight),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
            child: Row(
              children: [
                Container(
                  height: size.height * (61 / UiAssets.xdheight),
                  width: size.width * (240 / UiAssets.xdwidth),
                  decoration: BoxDecoration(
                      color: Color(0xffE2F5EE),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: AudioPlayerWidget(
                    url: audioUrl,
                  ),
                ),
                SizedBox(
                  width: size.width * (28 / UiAssets.xdwidth),
                ),
                Container(
                    height: size.height * (61 / UiAssets.xdheight),
                    width: size.width * (60 / UiAssets.xdwidth),
                    decoration: BoxDecoration(
                        color: Color(0xffFFEBA1),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Icon(Icons.share)),
              ],
            ),
          ),
          SizedBox(
            height: size.height * (35 / UiAssets.xdheight),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
                height: size.height * (350 / UiAssets.xdheight),
                width: size.width * (348 / UiAssets.xdwidth),
                child: Center(
                  child: Text(
                    infoTemp != "" ? infoTemp : "내용이 없습니다",
                    style: TextStyle(fontSize: 20),
                  ),
                )),
          )
        ],
      ),
    ));
  }
}
