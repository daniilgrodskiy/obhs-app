import 'package:flutter/material.dart';
import 'bell_schedule/bell_schedule.dart';
import 'news/news.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'home/home.dart';
// import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:old_bridge_high_school_app/extras/extras.dart';
import 'settings.dart';

void main() => runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Old Bridge High School App',
      home: AppDrawer(),
      //OldBridgeApp() class is what will be run
    );
  }
}


class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => new _AppDrawerState();
}

String url = "https://docs.google.com/presentation/d/1vDk1NL6he_u2np4KHbO8vEr2aFh4XdP7Lk23kUCof1I/pub?start=true&loop=false&delayms=10000";


class _AppDrawerState extends State<AppDrawer>{

  // Container activeContainer = home;
  // var _scaffoldKey = GlobalKey<ScaffoldState>();
  var webViewPage = false;
  var appBarTitle = "Home";


  @override
  Widget build(BuildContext context) {
    return new Drawer(
      
      elevation: 10.0,
      child: ListView(
        children: <Widget>[
          // DrawerHeader(
          //   padding: EdgeInsets.all(0.0),
          //   margin: EdgeInsets.all(0.0),
          //   curve: Curves.decelerate,
          //   child: Text('Menu'),
          // ),
          Container(
            child: Column(children: <Widget>[
              //create a bunch of children, each will be its own page
              // DrawerHeader(
              //   margin: EdgeInsets.all(10.0),
              //   padding: EdgeInsets.all(50.0),
              //   child: Container(
              //     child: Text(
              //       "Menu",
              //       style: TextStyle(
              //         fontSize: 40.0,
              //       )
              //     ),
              //   ),
              // ),
              ListTile(
                  leading: Icon(FontAwesomeIcons.home),
                  title: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  //properties of tapping the child itself
                  onTap: () {
                    //will execute upon clicking
                    setState(() {

                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => new Home(),
                        ), 
                      );                     
                  
                    //reroutes to page
                    });

                  }),
              Container(
                width: 280.0,
                child:  Divider(color: Colors.black26),
              ),
              ListTile(
                  leading: Icon(FontAwesomeIcons.bell),
                  title: Text(
                    'Bell Schedule',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => new Settings(),
                        ), 
                      );  
                    });
                  }
                  
                ),
              Container(
                width: 280.0,
                child:  Divider(color: Colors.black26),
              ),
              ListTile(
                  //maybe change icon??
                  leading: Icon(FontAwesomeIcons.mapSigns),
                  title: Text(
                    'Map',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),

                  onTap: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => new Settings(),
                        ), 
                      );  
                    });
                  }
                  
                ),
              Container(
                width: 280.0,
                child:  Divider(color: Colors.black26),
              ),
              ListTile(
                  leading: Icon(FontAwesomeIcons.utensils),
                  trailing: Icon(FontAwesomeIcons.wifi),
                  title: Text(
                    'Lunch',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => 
                          new WebviewScaffold(
                            url: 'https://oldbridgetownship.sodexomyway.com/images/OBHS%20Menu%20May%202018_tcm747-183336.pdf',
                            appBar: AppBar(
                              leading: IconButton(
                                icon: Icon(Icons.menu),
                                onPressed: () =>
                                  Navigator.pop(context, true),
                              ),
                              title: Text("Lunch"),
                            ),
                            withJavascript: true,
                            withLocalStorage: true,
                            withZoom: true,
                          ),
                        ), 
                      );  
                    });
                  }
                  
                ),
              Container(
                width: 280.0,
                child:  Divider(color: Colors.black26),
              ),
              ListTile(
                  leading: Icon(FontAwesomeIcons.bullhorn),
                  trailing: Icon(FontAwesomeIcons.wifi),
                  title: Text(
                    'Announcements',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => 
                          new WebviewScaffold(
                            url: url,
                            appBar: AppBar(
                              leading: IconButton(
                                icon: Icon(Icons.menu),
                                onPressed: () =>
                                  Navigator.pop(context, true),
                              ),
                              title: Text("Announcements"),
                            ),
                            withJavascript: true,
                            withLocalStorage: true,
                            withZoom: true,
                          ),
                        ), 
                      );  
                    });
                  }
              ),
              Container(
                width: 280.0,
                child:  Divider(color: Colors.black26),
              ),
              ListTile(
                  leading: Icon(FontAwesomeIcons.newspaper),
                  trailing: Icon(FontAwesomeIcons.wifi),
                  title: Text(
                    'News',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => new News(),
                        ), 
                      );  
                    });
                  }
                  
                ),
              Container(
                width: 280.0,
                child:  Divider(color: Colors.black26),
              ),
              ListTile(
                  leading: Icon(FontAwesomeIcons.calendarAlt),
                  trailing: Icon(FontAwesomeIcons.wifi),
                  title: Text(
                    'Calendar',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => 
                          new WebviewScaffold(
                            url: 'https://www.oldbridgeadmin.org//cms/lib/NJ02201158/Centricity/Domain/1103/REVISED%202017-2018%20SY%20CALENDAR%20APRIL%204%20%205%20SCHOOL%20DAYS.pdf',
                            appBar: AppBar(
                              leading: IconButton(
                                icon: Icon(Icons.menu),
                                onPressed: () =>
                                  Navigator.pop(context, true),
                              ),
                              title: Text("Calendar"),
                            ),
                            withJavascript: true,
                            withLocalStorage: true,
                            withZoom: true,
                          ),
                        ), 
                      );  
                    });
                  }
                ),

              Container(
                width: 280.0,
                child:  Divider(color: Colors.black26),
              ),


              ListTile(
                  leading: Icon(FontAwesomeIcons.plusCircle),
                  title: Text(
                    'Extras',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => new Extras(),
                        ), 
                      );  
                    });
                  }
                  
                ),

              Container(
                width: 280.0,
                child:  Divider(color: Colors.black26),
              ),

              ListTile(
                  //maybe change icon??
                  leading: Icon(FontAwesomeIcons.cog),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => new Settings(),
                        ), 
                      );  
                    });
                  }
                ),

              


                Container(
                  width: 200.0,
                  child:  Divider(color: Colors.black26),
                ),
            ]),
          )
        ],
      ),
    );
  }
}