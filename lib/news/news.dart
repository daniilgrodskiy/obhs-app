import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:old_bridge_high_school_app/drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(new News());


class News extends StatelessWidget {
  @override
    Widget build(BuildContext context) {

      // SystemChrome.setEnabledSystemUIOverlays([
      //   SystemUiOverlay.bottom
      // ]);


      return MaterialApp(
        //title: 'News',
        theme: ThemeData(
          primaryColor: Colors.deepPurple[300],
          fontFamily:'lato',
        ),
        
        home: PhotoList(),
      );
    }

}

class PhotoList extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return PhotoListState();
    }
}

class PhotoListState extends State<PhotoList> {
  StreamController<Photo> streamController;
  //will take in all of the Photo elements
  List<Photo> list = [];


  void initState() {
    super.initState();
    
    streamController = StreamController.broadcast();

    streamController.stream.listen((p) =>
      setState(() => list.add(p)
    ));

    load(streamController);
  }

  load(StreamController sc) async {
    String url = "http://daniil-obhs-app-news-page-com.stackstaging.com/jsonfile";
    var client = new http.Client();

    var req = new http.Request("get", Uri.parse(url));
    var streamedRes = await client.send(req);

    streamedRes.stream
      .transform(UTF8.decoder)
      .transform(json.decoder)
      .expand((e) => e)
      .map((map) => Photo.fromJsonMap(map))
      //CONNECTION BETWEEN THE TWO CLASSES IS HERE (line above)^
      .pipe(streamController);
  }

  @override
  void dispose() {
    super.dispose();
    streamController?.close();
    streamController = null;
  }

  @override
  Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          title: Text("News"),
        ),
        
        body: Center(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) => _makeElement(index),
            //ORIGINAL WAY^^^

            // itemBuilder: (BuildContext context, int index) => 
            // new Container(
            //   child: new Card(
            //     color: Colors.deepPurple[200],
            //     elevation: 5.0,
            //       child: _makeElement(index)
            //   ),
            //   color: Colors.grey[350],
            // ),
          ),
        ),
      );
    }

    Widget _makeElement(int index) {
      if(index >= list.length) {
        return null;
      }

      return GestureDetector(

        onTap: (){
            var tappedContainer = index + 1;
            //^weird indexes
            print("Container $tappedContainer was clicked");
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context) => new DetailScreen(photo: list[index])));
                //builder: (BuildContext context) => new PageTwo()));            
          },
        
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(list[index].url), 
            ),
            color: Colors.deepPurple[200],
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            boxShadow: [BoxShadow(
              color: Colors.black38,
              blurRadius: 4.0,
            ),]
          ),
          padding: EdgeInsets.all(5.0),
          margin: EdgeInsets.all(10.0),
          height: 400.0,

            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      list[index].title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "helvetica",
                        height: 1.1,
                        color: Colors.white,
                        //originally Colors.white
                        fontSize: 40.0)
                    ),
                    Text(
                      list[index].blurb,
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
        );
    }
}

class Photo {
  final String title;
  final String url;
  final String description;
  final String blurb;


  Photo.fromJsonMap(Map map)
    : title = map['title'],
      description = map['description'],
      url = map['url'],
      blurb = map['blurb'];
}

class DetailScreen extends StatelessWidget {
  
  final Photo photo;
  ScrollController _scrollViewController = new ScrollController();

  DetailScreen({Key key, this.photo}) : super(key: key);

  @override
    Widget build(BuildContext context) {
      // TODO: implement build

    return Scaffold(
      body: NestedScrollView(
        controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
          //header for ScrollView; i.e. 'AppBar'
          return <Widget> [
            SliverAppBar(
              title: Text(photo.title),
              pinned: false,
              floating: true,
              forceElevated: boxIsScrolled,
            ),
          ];
        },
          body: ListView(
            padding: EdgeInsets.all(0.0),
          //controller: _scrollViewController,
            children: <Widget>[
              Column(
                children: <Widget>[
                  // Stack(
                  //   children: <Widget>[
                  //     Positioned(
                  //       left: 30.0,
                  //       top: 30.0,
                  //       child: Container(
                  //         // width: 100.0,
                  //         // color: Colors.red,
                  //       ),
                  //     )
                  //   ],
                  // ),
                  Container(
                    decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(photo.url), 
                    ),
                    color: Colors.deepPurple[200],
                    ),
                      
                    // padding: EdgeInsets.only(top: 0.0),
                    // margin: EdgeInsets.only(top: 0.0),
                    ///^^^THE PARASITES THAT WERE PREVENTING ME FROM MAKING MY
                    ////IMAGE STRETCH FULLY LOL

                    height: 500.0,
                    width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: 50.0),
                                child: Text(
                                  photo.title, 
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    height: 1.1,
                                    fontFamily: "helvetica",
                                    color: Colors.white,
                                    fontSize: 40.0)
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 50.0),
                                child: Text(
                                  photo.blurb,
                                  style: TextStyle(
                                    height: 1.5,
                                    fontFamily: "helvetica",
                                    color: Colors.grey[300],
                                    fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Text(
                        photo.description,
                        style: TextStyle(
                          height: 1.25,
                          fontSize: 18.0,
                          color: Colors.grey[800],
                          //letterSpacing: 1.1
                          ),
                      ),
                    )
                  ],
                ),
              ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurple[300],
          child: Icon(FontAwesomeIcons.arrowUp),
          onPressed: () {
            _scrollViewController.animateTo(
              _scrollViewController.position.minScrollExtent,
              duration: Duration(milliseconds: 1000),
              curve: Curves.decelerate);
          },
        ),
    );
  }
}
                    
      





