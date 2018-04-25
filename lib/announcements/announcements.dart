import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
// import 'dart:async';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:flutter/services.dart';

void main() => runApp(new Announcements());

class Announcements extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        //title: 'Announcements',
        theme: ThemeData(
          primaryColor: Colors.deepPurple[300],
          fontFamily:'helvetica',
        ),
        home: MainAnnouncements(),
      );
    }

}

class MainAnnouncements extends StatefulWidget {
  @override
  MainAnnouncementsState createState() => new MainAnnouncementsState();
}

class MainAnnouncementsState extends State<MainAnnouncements> {

  ScrollController _scrollController = new ScrollController();

  final flutterWebviewPlugin = FlutterWebviewPlugin();
  final url = "https://docs.google.com/presentation/d/1vDk1NL6he_u2np4KHbO8vEr2aFh4XdP7Lk23kUCof1I/pub?start=true&loop=false&delayms=10000";

    Widget build(BuildContext context) {
      return Container(
        
        child: Scaffold(
          appBar: AppBar(
            title: Text("Home Page"),
          ),
          body: ListView(
          controller: _scrollController,
          children: <Widget>[
            Column(              
              children: <Widget>[
                // Container(
                //   padding: EdgeInsets.all(20.0),
                // ),
                WebviewScaffold(
                  appBar: AppBar(
                    automaticallyImplyLeading: false,
                    backgroundColor: Colors.deepPurple[200],
                    //bottomOpacity: 0.0,
                    //toolbarOpacity: 0.0,
                      actions: <Widget>[ new GestureDetector(
                        onTap: (){
                          Navigator.popUntil(
                            context, ModalRoute.withName(Navigator.defaultRouteName)
                          );
                        },
                        child: Icon(
                          Icons.cancel
                        ),
                      ),
                    ],
                  ),
                url: "https://docs.google.com/presentation/d/1vDk1NL6he_u2np4KHbO8vEr2aFh4XdP7Lk23kUCof1I/pub?start=true&loop=false&delayms=10000",
              ),
            ],
          ),
          ],
          ),
        ),
      );
    }
}



// Widget build(BuildContext context) {
//       return Container(
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text("Home Page"),
//           ),
//           body: Container(
//             child: Column(
//               children: <Widget>[
//                 WebviewScaffold(
//                   appBar: AppBar(
//                     automaticallyImplyLeading: false,
//                     backgroundColor: Colors.deepPurple[200],
//                     //bottomOpacity: 0.0,
//                     //toolbarOpacity: 0.0,
//                       actions: <Widget>[ new GestureDetector(
//                         onTap: (){
//                           Navigator.popUntil(
//                             context, ModalRoute.withName(Navigator.defaultRouteName)
//                           );
//                         },
//                         child: Icon(
//                           Icons.cancel
//                         ),
//                       ),
//                     ],
//                   ),
//                 url: "https://docs.google.com/presentation/d/1vDk1NL6he_u2np4KHbO8vEr2aFh4XdP7Lk23kUCof1I/pub?start=true&loop=false&delayms=10000",
//               ),
//             ],
//           )
//           ),
//         ),
//       );
//   }