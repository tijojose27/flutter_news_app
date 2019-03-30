import 'package:flutter/material.dart';

void main() => runApp(CustomNewsCard());

class CustomNewsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: PreferredSize(
            child: AppBar(
              elevation: 4.0,
              backgroundColor: Colors.white,
              centerTitle: true,
              title: SizedBox(
                height: 0.5,
                child: Text(
                  'News Headlines',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              leading: IconButton(
                  color: Colors.black54,
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            preferredSize: Size.fromHeight(80.0)),
        body: Center(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder:(BuildContext ctcxt, int index){
                return cardWidgetPadding();
              },
          ),
        ),
      ),
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
