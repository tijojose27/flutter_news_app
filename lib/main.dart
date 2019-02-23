import 'package:flutter/material.dart';
import 'package:flutter_news_app/NoConnection.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_news_app/ShowNewsList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: mainButton(context));
  }

  Widget mainButton(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News App"),
        centerTitle: true,
      ),
      body: Center(
          child: RaisedButton(
        onPressed: (){
          checkConnectivity(context);
        },
        child: Text("Get Latest News"),
            color: Colors.redAccent,
            splashColor: Colors.blueAccent,
      )),
    );
  }

  checkConnectivity(BuildContext context) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
//      Navigator.push(context, MaterialPageRoute(
//          builder: (context) => ShowNewsList()));
        print("CONNECTION ESTABLISHED!!!!!!!!!!");
    } else {
//      Navigator.push(context, MaterialPageRoute(
//          builder: (context) => NoConnection()));
      print("NO CONNECTION");
    }
  }

}
