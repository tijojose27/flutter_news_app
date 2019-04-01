import 'package:flutter/material.dart';
import 'myAppBar.dart';
import 'package:flutter_news_app/Model/News.dart';



class CustomNewsCard extends StatefulWidget{

  final List<News> currNews;

  CustomNewsCard({Key key, @required this.currNews}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CustomNewsCard();
  }

}

class _CustomNewsCard extends State<CustomNewsCard> {

  List<News> myCurrNews;

  @override
  void initState() {
    myCurrNews = widget.currNews;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: Scaffold(
        appBar: myAppBar(title: Title(color: Colors.grey, child: Text("News Headlines")), hasBack: myBackButton(context),),
        body: Center(
          child: ListView.builder(
              itemCount: myCurrNews.length,
              itemBuilder:(BuildContext ctcxt, int index){
                return cardWidgetPadding();
              },
          ),
        ),
      ),
    );
  }

  Widget myBackButton(BuildContext context){
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: ()=> Navigator.pop(context),
    );
  }

  Widget cardWidgetPadding() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Stack(
        children: <Widget>[CardWidget(), CardWidget()],
      ),
    );
  }

  Widget CardWidget() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Row(
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
//                        clipBehavior: Clip.antiAliasWithSaveLayer,
//                        shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(15.0)),
//                        elevation: 8.0,
                //FOR THE IMAGE
                child: Image.asset(
                  "images/trump.jpg",
                ),
              ),
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        Card(
            elevation: 16.0,
            child: Padding(
              padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
              child: Text(
                "America pays for the wall: thieves mock Trump by stealing border razor wire",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
                textAlign: TextAlign.center,
              ),
            )),
      ],
    );
  }

}

//class myLeadingBackButton extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    return IconButton(
//      icon: Icon(Icons.arrow_back),
//      onPressed: ()=> Navigator.pop(context),
//    );
//  }
//}
