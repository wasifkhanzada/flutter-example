import 'package:flutter/material.dart';

class SinglePage extends StatelessWidget{

  final String title;

  SinglePage(this.title);

  @override
  Widget build (BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Container(
          child: new Center(
              child: new Text(title)
          ),
        ),
    floatingActionButton: new FloatingActionButton(
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}