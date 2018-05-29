import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


class Office365 extends StatefulWidget {
  @override
  _Office365State createState() => new _Office365State();
}

class _Office365State extends State<Office365> {


  @override
  Widget build(BuildContext context) {

    return new GestureDetector(
      child: new GestureDetector(
        onTap: () {
          setState(() {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => 
                new WebviewScaffold(
                  url: 'https://login.microsoftonline.com/',
                  appBar: AppBar(
                    // leading: IconButton(
                    //   icon: Icon(Icons.menu),
                    //   onPressed: () =>
                    //     Navigator.pop(context, true),
                    // ),
                    title: Text("Office 365"),
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
                image: new AssetImage('assets/extras_background/office365_background.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.1),
                  BlendMode.dstATop
                ),
              ),
              color: Colors.deepPurple[200],
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              boxShadow: [BoxShadow(
                color: Colors.black,
                blurRadius: 4.0,
              ),]
            ),
          
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.all(10.0),
            height: 100.0,
            
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Office 365",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "helvetica",
                        height: 1.1,
                        color: Colors.white,
                        //originally Colors.white
                        fontSize: 30.0)
                    ),
                    Text(
                      "Visit Office 365 here",
                      style: TextStyle(
                        fontFamily: "helvetica",
                        height: 1.1,
                        color: Colors.grey[200],
                        //originally Colors.grey[300]
                        fontSize: 15.0
                      ),
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