import 'package:flutter/material.dart';

class NoConnection extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Network Check",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Network Check"),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context);
              }
          ),
        ),
      ),
    );
  }



}