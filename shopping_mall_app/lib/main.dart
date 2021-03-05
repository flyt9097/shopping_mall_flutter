import 'package:flutter/material.dart';

//import 'usingMediaquery.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // stateless, stateful를 상속받는 위젯은 반드시 override 해야함
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("appbar / title: "),
            backgroundColor: Colors.pink[100],
            leading: Icon(Icons.list), // icon 재확인
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.account_box_rounded), // icon 재확인
                  tooltip: "tooltip", //tooltip과 label 차이점 찾기
                  onPressed: null //() => {} 사용자 개인정보 나오게
                  )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.pink[100],
            selectedItemColor: Colors.white, //정확한 사용법
            onTap: (index) => {},
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: "SEARCH"),
              BottomNavigationBarItem(icon: Icon(Icons.list), label: "LIST")
            ],
          ),
        ));
  }
}
/*
setstate
stateful, stateless 
selectIndex
*/
