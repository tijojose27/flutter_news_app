import 'package:flutter/material.dart';


void main() => runApp(showNewsHome());


class showNewsHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(
        primarySwatch: Colors.red,
    ),
    home: ShowCustomAppBar()
    );
  }
}



//CATUTION--------------------------------
//WILL NOT BE ABLE TO USE MATERIAL STUFF
//CAUTION---------------------------------

class ShowCustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var divHeight = MediaQuery.of(context).size.height;
    return Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.red,
                  Colors.redAccent
                ]
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 20.0
                )
              ],
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0),bottomRight: Radius.circular(15.0) )
            ),
            height: divHeight/2*0.32,
            child: Row(
              children: <Widget>[
                  IconButton(
                    alignment: Alignment.center,
                    icon: Icon(Icons.arrow_back),
                    iconSize: 30.0,
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                    onPressed: (){
                      print("Back pressed");
                    },
                  ),
              ],
            ),
          ),
    );
  }
}
