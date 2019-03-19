import 'package:flutter/material.dart';

void main() => runApp(customAppBar2());

class customAppBar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: PreferredSize(
            child: AppBar(
              title:
                  SizedBox(height: 0.5,
              child :Text('Welcome to Flutter'),
            ),
              leading: IconButton(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  icon: Icon(Icons.arrow_back), onPressed: (){}),),
            preferredSize: Size.fromHeight(80.0)),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
