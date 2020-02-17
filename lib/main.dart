import 'package:flutter/material.dart';

import 'UI/Intray/intray_page.dart';
import 'models/global.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Task MGMT'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var half = MediaQuery.of(context).size.width;
    return MaterialApp(
      color: Colors.yellow,
      home: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: new Scaffold(
            body: Stack(
              children: <Widget>[
                TabBarView(
                  children: [
                    IntrayPage(),
                    new Container(
                      color: darkGreyColor,
                    ),
                    new Container(
                      color: darkGreyColor,
                    ),
                    new Container(
                      color: darkGreyColor,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 50),
                  height: 150,
                  //color: Colors.white,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(50.0),
                      bottomRight: const Radius.circular(50.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('InTray', style: intrayTitleStyle),
                      Container(
                          //color: Colors.pink,
                          ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 120, left: (half * 0.5) - 30),
                    child: Container(
                      height: 60,
                      width: 60,
                      child: FloatingActionButton(
                        child: Icon(
                          Icons.add,
                          size: 60,
                        ),
                        elevation: 10,
                        backgroundColor: redColor,
                        onPressed: () {
                          print('dont touch me');
                        },
                      ),
                    )),
              ],
            ),
            appBar: new TabBar(
              tabs: [
                Tab(
                  icon: new Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: new Icon(
                    Icons.rss_feed,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: new Icon(
                    Icons.perm_identity,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: new Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                )
              ],
              labelColor: darkGreyColor,
              unselectedLabelColor: Colors.blue,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.red,
            ),
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
