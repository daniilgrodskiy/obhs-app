import 'package:flutter/material.dart';
// import 'dart:async';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:flutter/services.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


class ParentPortal extends StatefulWidget {
  @override
  _ParentPortalState createState() => new _ParentPortalState();
}

class _ParentPortalState extends State<ParentPortal> {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(

      child: 
      
      new GestureDetector(

        onTap: () {
          setState(() {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => 
                new WebviewScaffold(
                  url: 'http://www.fridayparentportal.com/oldbridge',
                  appBar: AppBar(
                    leading: IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () =>
                        Navigator.pop(context, true),
                    ),
                    title: Text("Friday Parent Portal"),
                  ),
                  withJavascript: true,
                  withLocalStorage: true,
                  withZoom: true,
                ),
              ), 
            );  
          });
        },

        child: Container(
            decoration: BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('assets/grades_background.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3),
                  BlendMode.dstATop
                ),
              ),
              color: Colors.deepPurple[200],
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              boxShadow: [BoxShadow(
                color: Colors.black26,
                blurRadius: 4.0,
              ),]
            ),
          
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.all(10.0),
            height: 90.0,
            
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Friday Parent Portal",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "helvetica",
                        height: 1.1,
                        color: Colors.white,
                        //originally Colors.white
                        fontSize: 30.0)
                    ),
                    Text(
                      "Check your grades here",
                      style: TextStyle(
                        fontFamily: "helvetica",
                        height: 1.5,
                        color: Colors.grey[200],
                        //originally Colors.grey[300]
                        fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ),
    );
  }
}