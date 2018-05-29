import 'package:flutter/material.dart';
import 'period_structure.dart';
import 'package:old_bridge_high_school_app/drawer.dart';


// import 'dart:async';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:flutter/services.dart';

void main() => runApp(new BellSchedule());


class BellSchedule extends StatelessWidget {
  @override
    Widget build(BuildContext context) {

      return MaterialApp(
        //title: 'OBHS',
        theme: ThemeData(
          primaryColor: Colors.deepPurple[300],
          fontFamily:'helvetica',
        ),
        home: MainBellSchedule(),
        
      );
    }

}

class MainBellSchedule extends StatefulWidget {
  @override
  MainBellScheduleState createState() => new MainBellScheduleState();
}

class MainBellScheduleState extends State<MainBellSchedule> {

  //ScrollController _scrollController = new ScrollController();


  Widget build(BuildContext context) {

      return Scaffold(
          drawer: AppDrawer(),
          appBar: AppBar(
            title: Text("Bell Schedule"),
          ),
          // body: Column(
            // children: <Widget>[
            //   //DropDownMenu(),
            body: Container(
            padding: new EdgeInsets.all(16.0),
            child: new Center(
              child: new DefaultTabController(
                length: 3,
                child: new Scaffold(
                    appBar: new AppBar(
                        bottom: new TabBar(
                          tabs: <Widget>[
                            new Tab(
                                child: new Text("Full Day",
                                    style: new TextStyle(fontSize: 15.0))),
                            new Tab(
                                child: new Text("Half Day",
                                    style: new TextStyle(fontSize: 15.0))),
                            new Tab(
                                child: new Text("Delayed Opening",
                                    style: new TextStyle(fontSize: 15.0))),
                          ],
                        ),
                        title: new Text("Bell Schedule")),
                    body: new TabBarView(
                      children: <Widget>[
                        new Container(
                          //Full Day
                          child: new Row(children: [
                            new Expanded(
                              child: new Column(children: [
                                  new Padding(padding: EdgeInsets.all(5.0)),
                                  period('1'),
                                  new Divider(color: Colors.black),
                                  period('2'),
                                  new Divider(color: Colors.black),
                                  period('3'),
                                  new Divider(color: Colors.black),
                                  period('4/5'),
                                  new Divider(color: Colors.black),
                                  period('6'),
                                  new Divider(color: Colors.black),
                                  period('7/8'),
                                  new Divider(color: Colors.black),
                                  period('9/10'),
                                  new Divider(color: Colors.black),
                                  period('11'),
                                  new Divider(color: Colors.black),
                                  period('12'),
                                  new Divider(color: Colors.black),
                                ], crossAxisAlignment: CrossAxisAlignment.start)
                              ),
                                new Expanded (
                                  child: new Column(children: [
                                  new Padding(padding: EdgeInsets.all(5.0)),
                                  periodTime('7:35', '8:35'),
                                  new Divider(color: Colors.black),
                                  periodTime('7:35', '8:35'),
                                  new Divider(color: Colors.black),
                                  periodTime('7:35', '8:35'),
                                  new Divider(color: Colors.black),
                                  periodTime('7:35', '8:35'),
                                  new Divider(color: Colors.black),
                                  periodTime('7:35', '8:35'),
                                  new Divider(color: Colors.black),
                                  periodTime('7:35', '8:35'),
                                  new Divider(color: Colors.black),
                                  periodTime('7:35', '8:35'),
                                  new Divider(color: Colors.black),
                                  periodTime('7:35', '8:35'),
                                  new Divider(color: Colors.black),
                                  periodTime('7:35', '8:35'),
                                  new Divider(color: Colors.black),
                                  ], 
                                  ),
                                )
                          ]),
                        ),
                        new Container(
                          //Half Day
                          child: new Row(children: [
                            new Expanded(
                                child: new Column(children: [
                              new Text(
                                "Hey",
                                textScaleFactor: 0.9,
                                textAlign: TextAlign.left,
                              ),
                              new Text(
                                "Hey",
                                textScaleFactor: 0.8,
                                textAlign: TextAlign.right,
                                style: new TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ], crossAxisAlignment: CrossAxisAlignment.start)),
                            new Expanded(
                                child: new Text(
                                  "Half Day",
                                  textAlign: TextAlign.center,
                                )
                            ),
                            new Expanded(
                                child: new Text(
                                  "Halfie",
                                  textAlign: TextAlign.center,
                                )
                            ),
                          ]),
                        ),
                        new Container(
                            //Delayed Opening

                            ),
                      ],
                    ),
                ),
              ),
            ),
          ),
      //       ],
            
      //   ),
      //   ),
      );
  }
}

class DropDownMenu extends StatefulWidget {
  @override
  _DropDownMenuState createState() => new _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {


  String _value;
  String _placeholder = 'Bryan';
  List<String> _values = new List<String>();

  void initState() {
    _values.addAll(["Bryan", "Chris", "Heather", "Tammy"]);
    _value = _values.elementAt(0);
    super.initState();

  }

  void _onChanged(String value) {
    setState(() {
      _value = value;      
    });
    _placeholder = value;
  }

  @override
  Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            DropdownButton(
              value: _value,
              items: _values.map((String value){
                //.map does a function to each value in _values
                ///the 'String value' (to my understanding) is 
                ///just a placeholder value like in a...
                ///...foreach loop e.g. for (value : _values)
                ///'value' variable can be named anything
                return DropdownMenuItem(
                  value: value,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.home),
                      Text('Person: ${value}')
                    ],
                  ),
                );
              }).toList(),
              onChanged: (String value){
                _onChanged(value);
              },
            ),
            Container(
              child: Text(
                '$_placeholder'
              ),
            )
          ],
        )
    );
  }
}