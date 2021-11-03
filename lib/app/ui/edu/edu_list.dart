import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kiritage/app/routes/home_route.dart';
import 'package:kiritage/app/ui/UiAsset.dart';
import 'package:kiritage/app/ui/home/searchbar.dart';
import 'package:carousel_slider/carousel_slider.dart';

final username = "홍길동";
final List<Color> colorList = [
  Colors.red,
  Color(0xffFD6F96),
  Color(0xffFFEBA1),
  Color(0xff95DAC1)
];
final List<String> first = ['경복궁', '첨성대', '다보탑'];
final List<String> second = ['초등학생', '중학생', '고등학생'];

class EduList extends StatelessWidget {
  const EduList({Key? key}) : super(key: key);

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
            "오늘은 무엇을 배워볼까요?",
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
            height: size.height * (30 / UiAssets.xdheight),
          ),
          SearchBar(size: size),
          SizedBox(
            height: size.height * (30 / UiAssets.xdheight),
          ),
          Text(
            "오늘의 문화재",
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.left,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  height: size.height * (240 / UiAssets.xdheight)),
              items: [
                1,
                2,
                3,
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {
                        SearchBar.myController.text = first[i - 1];
                        Get.toNamed(Routes.SEARCHRESULT);
                      },
                      child: Container(
                          width: size.width * (300 / UiAssets.xdwidth),
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              color: colorList[i],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Center(
                            child: Text(
                              first[i - 1],
                              style: TextStyle(fontSize: 32),
                            ),
                          )),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: size.height * (28 / UiAssets.xdheight),
          ),
          Text(
            "연령별대로 공부하기",
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.left,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  height: size.height * (120 / UiAssets.xdheight)),
              items: [
                1,
                2,
                3,
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: size.width * (300 / UiAssets.xdwidth),
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: colorList[i],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Center(
                          child: Text(
                            second[i - 1],
                            style: TextStyle(fontSize: 32.0),
                          ),
                        ));
                  },
                );
              }).toList(),
            ),
          )
        ],
      ),
    ));
  }
}
