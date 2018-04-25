import 'package:flutter/material.dart';
// import 'dart:async';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:flutter/services.dart';

void main() => runApp(new Home());


class Home extends StatelessWidget {
  @override
    Widget build(BuildContext context) {

      return MaterialApp(
        //title: 'News',
        theme: ThemeData(
          primaryColor: Colors.deepPurple[300],
          fontFamily:'helvetica',
        ),
        home: MainHome(),
      );
    }

}

class MainHome extends StatefulWidget {
  @override
  MainHomeState createState() => new MainHomeState();
}

class MainHomeState extends State<MainHome> {

  ScrollController _scrollController = new ScrollController();

  Widget build(BuildContext context) {

      return Container(
        child: Scaffold(
          // appBar: AppBar(
          //   title: Text("Home Page"),
          // ),
          body: ListView(
            controller: _scrollController,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Hey"),
                ],
              ),
            ],
          ),
        ),
      );
  }
}