import 'package:flutter/material.dart';
import 'package:kiritage/app/data/provider/cha_api.dart';
import 'package:kiritage/app/data/provider/database.dart';
import 'package:kiritage/app/ui/home/searchbar.dart';

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
      getAll(codes[0], codes[1], codes[2]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: result == null
            ? Center(
                child: Container(
                child: Text("지원되지 않는 문화재입니다"),
              ))
            : SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(audioUrl),
                      Text(imageUrl.toString()),
                      Text(videoUrl),
                      Text(info)
                    ],
                  ),
                ),
              ));
  }
}
