import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'home/home.dart';
import 'package:flutter/foundation.dart';
// import 'dart:async';
import 'package:flutter/cupertino.dart';

void main() => runApp(new MyApp());


final ThemeData kTempTheme = ThemeData(
  //primarySwatch: Colors.deepPurple[300],
  primaryColor: Colors.deepPurple[300],
  primaryColorBrightness: Brightness.light,
  fontFamily: defaultTargetPlatform == TargetPlatform.iOS
    ? "lato"
    : "helvetica" //CHANGE
);

class MyApp extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Webview Example',
        theme: ThemeData.dark(),
        // routes: {
        //   "/": (_) => Home(),
        //   "/webview": (_) => WebviewScaffold(
        //         url: url,
        //         appBar: AppBar(
        //           title: Text("WebView"),
        //         ),
        //         withJavascript: true,
        //         withLocalStorage: true,
        //         withZoom: true,
        //       )
        // },
        home: Home(),
      );
    }
}

      // title: 'Old Bridge High School App',
      // theme: kTempTheme,
      // //home: OldBridgeApp(),
      // //OldBridgeApp() class is what will be run


class OldBridgeApp extends StatefulWidget {
  //neccessary to make this class bc flutter is weird
  @override
  _OldBridgeAppState createState() => _OldBridgeAppState();
}

class _OldBridgeAppState extends State<OldBridgeApp> {

  @override
  Widget build(BuildContext context) {
    //code responsible for navigation bar
    return new Scaffold(

    );
  }
}
