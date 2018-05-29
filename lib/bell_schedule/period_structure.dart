import 'package:flutter/material.dart';

/////////
///
///
//////
///
//////
///
//////
///
//////
///
///
///TAKE THIS CODE AND MANIPULATE 'perListItemDelay' TO BE A CHAIN OF
///IF-ELSE CONDITIONALS REGARDING THE CURRENT STATE OF THE DROPDOWN MENU
// createMenuItems(menuController) {

//     final titles = ['THE PADDOCK', 'THE HERO', 'HELP US GROW', 'SETTINGS'];
//     final selectedIndex = 0;

//     final listItems = [];
//     final animationIntervalDuration = 0.5;
//     final perListItemDelay = 
//       menuController.state != MenuState.closing ? 0.15 : 0.0;

//     for (var i = 0; i < titles.length; ++i) {

//       final animationIntervalStart = i * perListItemDelay;
//       final animationIntervalEnd = animationIntervalStart + animationIntervalDuration;

//       listItems.add(
//         AnimatedMenuListItem(
//           menuState: menuController.state,
//           duration: Duration(milliseconds: 600),
//           curve: Interval(
//             animationIntervalStart,
//             animationIntervalEnd,
//             curve: Curves.easeOut
//           ),
//           menuListItem: _MenuListItem(
//             title: titles[i],
//             isSelected: i == selectedIndex,
//             onTap: () {
//               menuController.close();
//             }
//           ),
//         ),
//       );
//     }
///
///
//////
///
//////
///
//////
///
//////
///
///

class PeriodStructure extends StatefulWidget {
  @override
  _PeriodStructureState createState() => new _PeriodStructureState();
}

class _PeriodStructureState extends State<PeriodStructure> {

    //Period 1
    final fPeriod1Start = "7:35";
    final fPeriod1End = "8:18";

    final fPeriod2Start = "8:23";
    final fPeriod2End = "9:04";

    final fPeriod3Start = "9:09";
    final fPeriod3End = "9:50";

    //Period 4
    final fPeriod4Start = "9:55";
    final fPeriod4End = "10:16";

    final fPeriod45Start = "9:55";
    final fPeriod45End = "10:36";

    final fPeriod56Start = "10:21";
    final fPeriod56End = "11:02";

    //Period 6
    final fPeriod6Start = "10:41";
    final fPeriod6End = "11:02";

    final fPeriod67Start = "10:41";
    final fPeriod67End = "11:22";

    final fPeriod78Start = "11:07";
    final fPeriod78End = "11:48";

    //Period 8
    final fPeriod8Start = "11:27";
    final fPeriod8End = "11:48";

    final fPeriod910Start = "11:53";
    final fPeriod910End = "12:34";

    //Period 10
    final fPeriod10Start = "12:13";
    final fPeriod10End = "12:34";

    final fPeriod11Start = "12:39";
    final fPeriod11End = "1:20";

    final fPeriod12Start = "1:25";
    final fPeriod12End = "2:06";



    final hPeriod1 = "8:23";

    final dPeriod1 = "9:35";

    final fullDayTimes = 
      [
        //Period 4 Lunch
        "7:35", "8:18",   //Period 1
        "8:23", "9:04",   //Period 2
        "9:09", "9:50",   //Period 3
        "9:55", "10:16",  //Period 4
        "10:21", "11:02", //Period 5/6
        "11:07", "11:48", //Period 7/8
        "11:53", "12:34", //Period 9/10
        "12:39", "1:20",  //Period 11
        "1:25", "2:06",   //Period 12

        //Period 6 Lunch
        "7:35", "8:18",   //Period 1
        "8:23", "9:04",   //Period 2
        "9:09", "9:50",   //Period 3
        "9:55", "10:36",  //Period 4/5
        "10:41", "11:02", //Period 6
        "11:07", "11:48", //Period 7/8
        "11:53", "12:34", //Period 9/10
        "12:39", "1:20",  //Period 11
        "1:25", "2:06",   //Period 12

        //Period 8 Lunch
        "7:35", "8:18",   //Period 1
        "8:23", "9:04",   //Period 2
        "9:09", "9:50",   //Period 3
        "9:55", "10:36",  //Period 4/5
        "10:41", "11:02", //Period 6
        "11:07", "11:48", //Period 7/8
        "11:53", "12:34", //Period 9/10
        "12:39", "1:20",  //Period 11
        "1:25", "2:06",   //Period 12

      ];

    


  Widget period (x) {
  return new Text(
    "Period $x",
    textScaleFactor: 1.7,
    textAlign: TextAlign.left,
  );
  // new Divider(color: Colors.black);
  }

  Widget periodTime (start, finish) {
    return new Text(
      "$start - $finish",
      textScaleFactor: 1.7,
      textAlign: TextAlign.right,
    );
    // new Divider(color: Colors.black);
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      
    );
  }
}

Widget period (x) {
  return new Text(
    "Period $x",
    textScaleFactor: 1.7,
    textAlign: TextAlign.left,
  );
  // new Divider(color: Colors.black);
}

Widget periodTime (start, finish) {
  return new Text(
    "$start - $finish",
    textScaleFactor: 1.7,
    textAlign: TextAlign.right,
  );
  // new Divider(color: Colors.black);
}

// class PeriodStructure extends StatefulWidget{

//   @override
//     State<StatefulWidget> createState() {
//       // TODO: implement createState
//       return PeriodStructureState();
//     }
// }

// class PeriodStructureState extends State<PeriodStructure> {

//   Widget periodTime (start, finish) {
//   return new Text(
//     "$start - $finish",
//     textScaleFactor: 1.7,
//     textAlign: TextAlign.right,
//   );
//  // new Divider(color: Colors.black);
// 
//   Widget period (x) {
//   return new Text(
//     "Period $x",
//     textScaleFactor: 1.7,
//     textAlign: TextAlign.left,
//   );
//   // new Divider(color: Colors.black);
// }
// }

  
  
// }

// child: new Column(children: [
//                           new Text(
//                             "Period 1",
//                             textScaleFactor: 1.7,
//                             textAlign: TextAlign.left,
//                           ),
//                           new Divider(color: Colors.black),
//                           new Text(
//                             "Period 2",
//                             textScaleFactor: 1.7,
//                             textAlign: TextAlign.left,
//                           ),
//                           new Divider(color: Colors.black),
//                           new Text(
//                             "Period 3",
//                             textScaleFactor: 1.7,
//                             textAlign: TextAlign.left,
//                           ),
//                           new Divider(color: Colors.black),
//                           new Text(
//                             "Period 4/5",
//                             textScaleFactor: 1.7,
//                             textAlign: TextAlign.left,
//                           ),
//                           new Divider(color: Colors.black),
//                           new Text(
//                             "Period 6",
//                             textScaleFactor: 1.7,
//                             textAlign: TextAlign.left,
//                           ),
//                           new Divider(color: Colors.black),
//                           new Text(
//                             "Period 7/8",
//                             textScaleFactor: 1.7,
//                             textAlign: TextAlign.left,
//                           ),
//                           new Divider(color: Colors.black),
//                           new Text(
//                             "Period 9/10",
//                             textScaleFactor: 1.7,
//                             textAlign: TextAlign.left,
//                           ),
//                           new Divider(color: Colors.black),
//                           new Text(
//                             "Period 11",
//                             textScaleFactor: 1.7,
//                             textAlign: TextAlign.left,
//                           ),
//                           new Divider(color: Colors.black),
//                           new Text(
//                             "Period 12",
//                             textScaleFactor: 1.7,
//                             textAlign: TextAlign.left,
//                           ),
//                           new Divider(color: Colors.black),
//                         ], crossAxisAlignment: CrossAxisAlignment.start)
//                       ),
//                   new Expanded(
//                         child: new Column(children: [
//                           new Text(
//                             "7:35 - 8:18",
//                             textScaleFactor: 1.7,
//                             textAlign: TextAlign.right,
//                           ),
//                           new Divider(color: Colors.black),
//                           new Text(
//                             "7:35 - 8:18",
//                             textScaleFactor: 1.7,
//                             textAlign: TextAlign.right,
//                           ),
//                           new Divider(color: Colors.black),
//                           new Text(
//                             "7:35 - 8:18",
//                             textScaleFactor: 1.7,
//                             textAlign: TextAlign.right,
//                           ),
//                           new Divider(color: Colors.black),
//                           new Text(
//                             "7:35 - 8:18",
//                             textScaleFactor: 1.7,
//                             textAlign: TextAlign.right,
//                           ),
//                           new Divider(color: Colors.black),
//                           new Text(
//                             "7:35 - 8:18",
//                             textScaleFactor: 1.7,
//                             textAlign: TextAlign.right,
//                           ),
//                           new Divider(color: Colors.black),
//                           new Text(
//                             "7:35 - 8:18",
//                             textScaleFactor: 1.7,
//                             textAlign: TextAlign.right,
//                           ),
//                           new Divider(color: Colors.black),
//                           new Text(
//                             "7:35 - 8:18",
//                             textScaleFactor: 1.7,
//                             textAlign: TextAlign.right,
//                           ),
//                           new Divider(color: Colors.black),
//                           new Text(
//                             "7:35 - 8:18",
//                             textScaleFactor: 1.7,
//                             textAlign: TextAlign.right,
//                           ),
//                           new Divider(color: Colors.black),
//                           new Text(
//                             "7:35 - 8:18",
//                             textScaleFactor: 1.7,
//                             textAlign: TextAlign.right,
//                           ),
//                           new Divider(color: Colors.black),