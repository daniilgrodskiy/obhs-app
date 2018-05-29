import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


class CodeOfConduct extends StatefulWidget {
  @override
  _CodeOfConductState createState() => new _CodeOfConductState();
}

class _CodeOfConductState extends State<CodeOfConduct> {
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
                  url: 'https://www.oldbridgeadmin.org/site/handlers/filedownload.ashx?moduleinstanceid=16935&dataid=32618&FileName=OBHS%20Student%20Handbook-Code%20of%20Conduct%202017-2018%20REVISED.pdf',
                  appBar: AppBar(
                    // leading: IconButton(
                    //   icon: Icon(Icons.menu),
                    //   onPressed: () =>
                    //     Navigator.pop(context, true),
                    // ),
                    title: Text("Code of Conduct"),
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
                image: new AssetImage('assets/extras_background/code_of_conduct_background.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2),
                  BlendMode.dstATop
                ),
              ),
              color: Color(0xff7c94b6),
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
                      "Code of Conduct",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "helvetica",
                        height: 1.1,
                        color: Colors.white,
                        //originally Colors.white
                        fontSize: 30.0)
                    ),
                    Text(
                      "Learn the importance of respecting each other and yourself",
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

