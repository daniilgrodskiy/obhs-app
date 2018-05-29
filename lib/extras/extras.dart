import 'package:flutter/material.dart';
import 'package:old_bridge_high_school_app/drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'code_of_conduct.dart';
import 'activities.dart';
import 'late_bus.dart';
import 'my_mealtime.dart';
import 'office_365.dart';
import 'sports.dart';
import 'website.dart';

class Extras extends StatefulWidget {
  @override
  _ExtrasState createState() => new _ExtrasState();
}

class _ExtrasState extends State<Extras> {

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
    return Container(
      child: Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          title: Text("Extras"),
        ),
        body: ListView(
          controller: _scrollController,
          children: <Widget>[
            Website(),
            LateBus(),
            MyMealTime(),
            Sports(),
            Activities(),
            Office365(),
            CodeOfConduct(),
          ],
        ),
      ),
    );
  }


  Widget tabFramework(
    //this is just a potential template that may be in use later on
    ///it just breaks down the other tabs into the only parts 
    ///that actually change
      BuildContext context, 
      String url,
      String title,
      String imagePath,
      String description,
    )
  {
    return new GestureDetector(
      child: new GestureDetector(
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
                    title: Text(title),
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
                image: new AssetImage(imagePath),
                fit: BoxFit.cover,
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
            height: 90.0,
          
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "helvetica",
                        height: 1.1,
                        color: Colors.white,
                        //originally Colors.white
                        fontSize: 30.0)
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        fontFamily: "helvetica",
                        height: 1.5,
                        color: Colors.grey[200],
                        //originally Colors.grey[300]
                        fontSize: 14.0
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