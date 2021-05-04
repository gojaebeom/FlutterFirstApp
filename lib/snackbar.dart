import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "snackbar test",
        theme: ThemeData(primaryColor: Colors.green[600]),
        home: MyPage());
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("스낵바 연습"),
          centerTitle: true,
        ),
        body: Builder(
          builder: (BuildContext ctx) {
            return Center(
                child: FlatButton(
              child: Text("Show me", style: TextStyle(color: Colors.white)),
              color: Colors.red,
              onPressed: () {
                Scaffold.of(ctx).showSnackBar(SnackBar(content: Text("Hello")));
              },
            ));
          },
        ));
  }
}
