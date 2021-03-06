import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/list.dart';
import 'screens/search.dart';

//import 'usingMediaquery.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // stateless, stateful를 상속받는 위젯은 반드시 override 해야함
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  var _children = [Home(), Search(), List()];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("appbar / title: "),
        backgroundColor: Colors.pink[100],
        leading: Icon(Icons.category), // icon 재확인
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.account_box_rounded), // icon 재확인
              tooltip: "tooltip", //tooltip과 label 차이점 찾기
              onPressed: () => {})
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.pink[100],
        selectedItemColor: Colors.white, //정확한 사용법
        onTap: _onTap,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "SEARCH"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "LIST")
        ],
      ),
    );
  }
}
