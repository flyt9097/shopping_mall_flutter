import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        InkWell(
            child: Image.asset("images/images.jpeg", width: 30, height: 30),
            onTap: () => showMessage("FAIL")),
        InkWell(
            child: Image.asset("screens/success.jpeg", width: 30, height: 30),
            onTap: () => showMessage("SUCCESS"))
      ],
    ));
  }
}

void showMessage(String msg) {
  AppBar buildAppBar({String txt}) {
    return AppBar(title: Center(child: Text("~ SUCCESS ~")));
  }
}

/* 
앱 기본 화면:
카테고리2개 만든 후 각 
카테고리 별 물품 나오는 화면으로 전환
*/
