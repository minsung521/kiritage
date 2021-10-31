import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
          ),
          Text(
            "안녕하세요,",
            style: TextStyle(
              fontFamily: "SDChildFund",
            ),
          )
        ],
      ),
    );
  }
}
