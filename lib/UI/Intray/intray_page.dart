import 'package:flutter/material.dart';
import 'package:task_mgmt/models/global.dart';

class IntrayPage extends StatefulWidget {
  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkGreyColor,
      child: ListView(
        children: getList(),
        padding: EdgeInsets.only(top: 200),
      ),
    );
  }

  List<Widget> getList() {
    return [
      Container(
        height: 100,
        color: Colors.blue,
      ),
      Container(
        height: 100,
        color: Colors.green,
      ),
      Container(
        height: 100,
        color: Colors.red,
      ),
      Container(
        height: 100,
        color: Colors.white,
      ),
      Container(
        height: 100,
        color: Colors.yellow,
      ),
      Container(
        height: 100,
        color: Colors.purple,
      )
    ];
  }
}
