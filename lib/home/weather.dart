import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  runApp(
    MaterialApp(
      home: WeatherData(),
    )
  );
}

class WeatherData extends StatefulWidget {
  //will have create state function inside of it, thus StatefulWidget
  WeatherState createState() => WeatherState();
}

class WeatherState extends State<WeatherData> {
  final String url = "http://api.openweathermap.org/data/2.5/forecast?q=Old+Bridge&units=metric&APPID=069f76e07b436d2eb02e824f8582d79e";
  List data;

  Future<String> getSWData() async {
    var res = await http
      .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    setState(() {
      var resBody = json.decode(res.body)      ;
      data = resBody['results'];
    });

    return "Success!";
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return new Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Card(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: <Widget>[
                          Text("Name: "),
                          Text(
                            data[index]["data"]["list"]["main"]["temp"],
                            style: TextStyle(fontSize: 18.0, color: Colors.black87)
                          ),
                        ],
                      )
                    ),
                  ),
                ],
              ),
            )
          );
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    this.getSWData();
  }
}