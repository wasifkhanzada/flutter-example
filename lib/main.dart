import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/singlePage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context){
    return new MaterialApp(
        theme: new ThemeData(primarySwatch: Colors.deepPurple),
        home: new HomePage(),
        routes: <String, WidgetBuilder>{
          "/product": (BuildContext context) => new SinglePage("Product"),
          "/contact": (BuildContext context) => new SinglePage("Contact"),
        }
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Home'),
        ),
        drawer: new Drawer(
            child: new ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: new Text('Muhammad Wasif Khanzada'),
                  accountEmail: new Text("wasifkhanzada309.wk@gmail.com"),
                  currentAccountPicture: new CircleAvatar(
                      backgroundColor: Colors.white,
                      child: new Text("WK")
                  ),
                  otherAccountsPictures: <Widget>[
                    new CircleAvatar(
                        backgroundColor: Colors.white,
                        child: new Text("TZ")
                    ),
                    new CircleAvatar(
                        backgroundColor: Colors.white,
                        child: new Text("FK")
                    )
                  ],
                ),
                new ListTile(
                    title: new Text('Home'),
                    trailing: new Icon(Icons.account_balance),
                    onTap: () {
                      Navigator.of(context).pop();
                    }
                ),
                new Divider(),
                new ListTile(
                    title: new Text('About'),
                    trailing: new Icon(Icons.android),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new SinglePage('About')));
                    }
                ),
                new Divider(),
                new ListTile(
                    title: new Text('Product'),
                    trailing: new Icon(Icons.ac_unit),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed("/product");
                    }
                ),
                new Divider(),
                new ListTile(
                    title: new Text('Contact'),
                    trailing: new Icon(Icons.wifi),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed("/contact");
                    }
                ),
              ],
            )
        ),
        body: new Container(
          child: new Center(
              child: new Text("Home Page")
          ),
        )
    );
  }
}
