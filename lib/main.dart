import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterdrawer/newpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "/a" : (BuildContext context) => NewPage("New Page")
      },

    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: Text("gmail"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0:0.0,
        flexibleSpace: FlexibleSpaceBar(
          background: SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 11.0),
            child: UserAccountsDrawerHeader(
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/mridul.jpg"),
                )

              ],
              accountName: Text("Mridul Roy"),
              accountEmail: Text("mridulr172@gmail.com"),
            ),
          )
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Mridul Roy"),
                accountEmail: Text("mridulr172@gmail.com"),
              currentAccountPicture: CircleAvatar(
                // backgroundColor: Colors.deepOrange,
                 backgroundImage: AssetImage("assets/mridul.jpg"),
              ),
            ),
            ListTile(
              title: Text("Welcome"),
              trailing: Icon(Icons.arrow_downward),
                onTap: () => Navigator.of(context).pop()
            ),
            ListTile(
              title: Text("Inbox"),
              trailing: Icon(Icons.ad_units),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/a");
                },
            ),
            Divider(),
            ListTile(
              title: Text("Sign Out"),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text('Home page'),
        ),
      ),

    );
  }
}


