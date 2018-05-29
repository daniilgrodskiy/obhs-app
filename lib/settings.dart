import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'drawer.dart';

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
        home: Settings(),
      );
    }
}



class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  ScrollController _scrollController;

  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  void dispose(){
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //code responsible for navigation bar
    return GestureDetector(
      child: Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: ListView(
          controller: _scrollController,
          children: <Widget>[
            
            Container(
              padding: EdgeInsets.fromLTRB(
                20.0,
                60.0,
                20.0,
                20.0,
              ),
              
              child: Text(
                "This page is currently in construction!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
