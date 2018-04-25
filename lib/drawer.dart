import 'package:flutter/material.dart';
import 'bell_schedule/bell_schedule.dart';
import 'news/news.dart';
//import 'package:url_launcher/url_launcher.dart';
//import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'home/home.dart';
import 'announcements/announcements.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Old Bridge High School App',
      home: OldBridgeApp(),
      //OldBridgeApp() class is what will be run
    );
  }
}

class OldBridgeApp extends StatefulWidget {
  //neccessary to make this class bc flutter is weird
  @override
  _OldBridgeAppState createState() => _OldBridgeAppState();
}

class _OldBridgeAppState extends State<OldBridgeApp> {

  static final Container home = 
    Container(
      child: Home(),
    );
    

  static final Container bellSchedule =
    Container(
      child: BellSchedule(),
    );

            //         Container(
            //           //Half Day

            //         ),
            //         Container(
            //           //Delayed Opening

            //         ),
            //       ],
            //     )
            //   ),
            // ),
            //tab view with 3 types of days
            //below each will have a drop down menu to choose lunch period
            //below that will be a table of values
 

  static final Container map = Container(
    child: Center(child: Text('Map')
        //image of OBHS map?
      ),
    );

  static final Container calendar = Container(
    child: Image.network("https://www.oldbridgeadmin.org/site/handlers/icalfeed.ashx?MIID=11794"),
    //image of official calendar for month of April 2018?
  );

  static final Container lunchMenu = Container(
    child: Center(child: Text('Lunch Menu')
        //image of lunch for current day/week
    ),
  );


  static final Container announcements = 
    Container(
      child: Announcements(),
    );

  static final Container settings = 
  Container(
    child: Center(child: Text('Settings')),
  );

  static final Container news = 
  Container(
    child: News(),
  );

  Container activeContainer = home;

  @override
  Widget build(BuildContext context) {
    //code responsible for navigation bar
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // Container(child: DrawerHeader(child: Text("Hey"))),
            Container(
              child: Column(children: <Widget>[
                //create a bunch of children, each will be its own page
                ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    //properties of tapping the child itself
                    onTap: () {
                      //will execute upon clicking
                      setState(() {
                        activeContainer = home;
                        //reroutes to page
                      });
                      Navigator.of(context).pop();
                    }),
                ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text('Bell Schedule'),
                    onTap: () {
                      setState(() {
                        activeContainer = bellSchedule;
                      });
                      Navigator.of(context).pop();
                    }),
                ListTile(
                    leading: Icon(Icons.map),
                    title: Text('Map'),
                    onTap: () {
                      setState(() {
                        activeContainer = map;
                      });
                      Navigator.of(context).pop();
                    }),
                ListTile(
                    leading: Icon(Icons.fastfood),
                    title: Text('Lunch'),
                    onTap: () {
                      setState(() {
                        activeContainer = lunchMenu;
                      });
                      Navigator.of(context).pop();
                    }),
                ListTile(
                    leading: Icon(Icons.announcement),
                    title: Text('Announcements'),
                    onTap: () {
                      setState(() {
                        activeContainer = announcements;
                      });
                      Navigator.of(context).pop(context);
                    }),
                ListTile(
                    leading: Icon(Icons.speaker_group),
                    title: Text('News'),
                    onTap: () {
                      setState(() {
                        activeContainer = news;
                      });
                      Navigator.of(context).pop();
                    }),
                ListTile(
                    leading: Icon(Icons.calendar_today),
                    title: Text('Calendar'),
                    onTap: () {
                      setState(() {
                        activeContainer = calendar;
                      });
                      Navigator.of(context).pop();
                    }),
                ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                    onTap: () {
                      setState(() {
                        activeContainer = settings;
                      });
                      Navigator.of(context).pop();
                    }),
              ]),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Old Bridge High School App'),
      ),

      body: activeContainer,
    );
  }
}
