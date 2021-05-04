import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Appbar",
      theme: ThemeData(primaryColor: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void menuIconClickEvent() => print("menu button click");
    void shoppingIconClickEvent() => print("shopping button click");
    void searchIconClickEvent() => print("search button click");

    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar"),
        centerTitle: true,
        elevation: 0.0,
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: () => menuIconClickEvent(),
        // ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => shoppingIconClickEvent(),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => searchIconClickEvent(),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/logo2.png"),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("assets/logo2.png"),
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage("assets/logo2.png"),
                //   backgroundColor: Colors.white,
                // ),
              ],
              accountName: Text("BBANTO"),
              accountEmail: Text("const.gjb@gmail.com"),
              onDetailsPressed: () {
                print("arrow is clicked");
              },
              decoration: BoxDecoration(
                  color: Colors.red[500],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0))),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text("Home"),
              onTap: () {
                print("Home is clicked");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text("Setting"),
              onTap: () {
                print("settings is clicked");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text("Q&A"),
              onTap: () {
                print("QA is clicked");
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
