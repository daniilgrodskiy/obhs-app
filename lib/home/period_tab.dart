import 'package:flutter/material.dart';

class PeriodTab extends StatefulWidget {
  @override
  _PeriodTabState createState() => new _PeriodTabState();
}

class _PeriodTabState extends State<PeriodTab> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        
        onTap: (){
          
        },

        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
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
                    "Current Period: 5/6",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "helvetica",
                      height: 1.1,
                      color: Colors.black,
                      //originally Colors.white
                      fontSize: 30.0)
                  ),
                  Text(
                    //list[index].blurb,
                    "Time Remaining: 32 minutes",
                    style: TextStyle(
                      fontFamily: "helvetica",
                      height: 1.5,
                      color: Colors.grey[400],
                      //originally Colors.grey[300]
                      fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}