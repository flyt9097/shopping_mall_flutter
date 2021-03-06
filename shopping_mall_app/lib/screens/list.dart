import 'package:flutter/material.dart';

class List extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            Container(child: Text("LIST LIST LIST"), color: Colors.green[100]));
  }
}
//미구현 : 여러가지 목록들
