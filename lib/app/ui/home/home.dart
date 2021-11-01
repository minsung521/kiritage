import 'package:flutter/material.dart';

final font = 'SDChildFund';
final username = "홍길동"; // getx-data 옮기기

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height * (190 / 925),
            ),
            Text(
              "안녕하세요,",
              style: TextStyle(
                fontSize: 40,
                backgroundColor: Colors.blueAccent,
              ),
            ),
            Text(
              "${username}님",
              style: TextStyle(
                fontSize: 40,
                backgroundColor: Colors.blueAccent,
              ),
            ),
            SizedBox(
              height: size.height * (190 / 925),
            ),
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: size.width * (40 / 430)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 36.0,
                    width: size.width * (280 / 430),
                    decoration: BoxDecoration(
                        color: Color(0xffE2F5EE),
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        TextField(
                          keyboardType: TextInputType.text,
                          style: TextStyle(backgroundColor: Colors.green),
                          decoration: InputDecoration(
                            alignLabelWithHint: false,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () => {},
                      icon: const Icon(
                        Icons.settings_outlined,
                        size: 36,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
