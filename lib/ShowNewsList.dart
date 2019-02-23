import 'package:flutter/material.dart';

class ShowNewsList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Check Connection"),
          ),
      )
    );
  }

}