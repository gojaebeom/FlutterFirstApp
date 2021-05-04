import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "스낵바 Builder 없이 사용",
      theme: ThemeData(primaryColor: Colors.green),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snack Bar"),
        centerTitle: true,
      ),
      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("Show me"),
        onPressed: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text("Hello world",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.teal,
            duration: Duration(milliseconds: 1000),
          ));
        },
      ),
    );
  }
}
