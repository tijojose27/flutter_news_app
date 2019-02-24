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
            title: Text("News"),

            leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: (){
                  Navigator.pop(context);
                }
            ),
          ),
          body: Center(
            child: Text("Stuff Goes here!!"),
          ),
      )
    );
  }

}