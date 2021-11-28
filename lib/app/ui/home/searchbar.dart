import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kiritage/app/routes/home_route.dart';
import 'package:kiritage/app/ui/UiAsset.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  static final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * (40 / UiAssets.xdwidth)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 36.0,
            width: size.width * (290 / UiAssets.xdwidth),
            decoration: BoxDecoration(
              color: Color(0xffE2F5EE),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0), // shadow direction: bottom right
                )
              ],
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    controller: myController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "검색어",
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    height: 36.0,
                    width: 72.0,
                    decoration: BoxDecoration(
                      color: Color(0xff95DAC1),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '검색',
                          style:
                              TextStyle(fontSize: 24, color: Color(0xff707070)),
                        ),
                      ],
                    ),
                  ),
                  onTap: () => {Get.toNamed(Routes.SEARCHRESULT)},
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              print("clicked");
              Get.toNamed(Routes.SETTINGS);
            },
            icon: const Icon(
              Icons.settings_outlined,
              size: 36,
            ),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
