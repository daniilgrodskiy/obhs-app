import 'package:flutter/material.dart';
import 'package:old_bridge_high_school_app/main.dart';
// import 'dart:async';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:flutter/services.dart';
import 'package:old_bridge_high_school_app/drawer.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'weather_tab.dart';
import 'period_tab.dart';
import 'parent_portal.dart';


void main() => runApp(new Home());


class Home extends StatelessWidget {
  @override
    Widget build(BuildContext context) {

      return MaterialApp(
        title: 'OBHS App',
        theme: ThemeData(
          primaryColor: Colors.deepPurple[300],
          fontFamily:'lato',
        ),
        home: MainHome(),
      );
    }

}

class MainHome extends StatefulWidget {
  @override
  MainHomeState createState() => new MainHomeState();
}

class MainHomeState extends State<MainHome>{

  ScrollController _scrollController;

  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  void dispose(){
    _scrollController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {

      return Container(
        child: Scaffold(
          drawer: AppDrawer(),
          appBar: AppBar(
            title: Text("Home"),
          ),
          body: ListView(
            controller: _scrollController,
            children: <Widget>[
              WeatherTab(),
              PeriodTab(),
              ParentPortal(),
            ],
          ),
        ),
      );
    }
}







