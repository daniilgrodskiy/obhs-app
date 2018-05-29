import 'package:flutter/material.dart';

class WeatherTab extends StatefulWidget {
  @override
  _WeatherTabState createState() => new _WeatherTabState();
}

class _WeatherTabState extends State<WeatherTab> {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(

      child: Container(
        decoration: BoxDecoration(
          // image: DecorationImage(
          //   fit: BoxFit.cover,
          //   image: NetworkImage(list[index].url), 
          // ),
          color: Colors.deepPurple[200],
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          boxShadow: [BoxShadow(
            color: Colors.black26,
            blurRadius: 4.0,
          ),]
        ),
      
        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.all(10.0),
        height: 150.0,

        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "75˚ F",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "helvetica",
                    height: 1.1,
                    color: Colors.white,
                    //originally Colors.white
                    fontSize: 60.0)
                ),
                Text(
                  //list[index].blurb,
                  "Old Bridge, NJ",
                  style: TextStyle(
                    fontFamily: "helvetica",
                    height: 1.5,
                    color: Colors.grey[200],
                    //originally Colors.grey[300]
                    fontSize: 15.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}