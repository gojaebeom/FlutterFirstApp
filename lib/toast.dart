import "package:flutter/material.dart";
import "package:fluttertoast/fluttertoast.dart";

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "토스트 메시지",
      theme: ThemeData(primaryColor: Colors.blue),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Toast Message"),
          centerTitle: true,
        ),
        body: Center(
          child: FlatButton(
              onPressed: () {
                flutterToast();
              },
              child: Text("Toast"),
              color: Colors.blue),
        ));
  }
}

void flutterToast() {
  Fluttertoast.showToast(
      msg: "Flutter",
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent,
      fontSize: 20.0,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT);
}
