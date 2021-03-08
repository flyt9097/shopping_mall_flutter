import 'package:flutter/material.dart';
import 'inkwellTest.dart';
import 'package:shopping_mall_app/main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
/*
  void showPage() {
    setState((int index) {
      _currentIndex = 4;
    });
  }

  이거는 provider를 사용해야함 - 공부중
*/

  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Row(children: [
        Expanded(
          child: InkWell(
              child: Image.asset("lib/images/test1.jpeg", fit: BoxFit.fill)),
          //onTap: () => showPage()
        ),
        Expanded(
            child: InkWell(
          child: Image.asset("lib/images/doge.jpg", fit: BoxFit.fill),
          //onTap: () => showPage()
        ))
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(child: Text(" 1 INFORMATION 1 ")),
        Container(child: Text(" 2 INFORMATION 2 "))
      ]),
      Container(child: Text(" GRAPHS ")),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(child: Text(" GRAPH 1 NUM ")),
        Container(child: Text(" GRAPH 2 NUM "))
      ])
    ]));
  }
}

/* 
앱 기본 화면:
카테고리2개 만든 후 각 
카테고리 별 물품 나오는 화면으로 전환
*/
