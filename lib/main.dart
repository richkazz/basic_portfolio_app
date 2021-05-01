import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'My Portfolio'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(title: Text(widget.title)),
        drawer: Drawer(child: ListView(children: [])),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.black54,
                        textColor: Colors.white,
                        child: Text(
                          'About Me',
                          textScaleFactor: 0.8,
                        ),
                        onPressed: () {},
                      ),
                      margin: EdgeInsets.only(left: 20.0, right: 10.0),
                      height: 25.0,
                    )),
                    Expanded(
                        child: Container(
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.black54,
                        textColor: Colors.white,
                        child: Text(
                          'Experiences',
                          textScaleFactor: 0.8,
                        ),
                        onPressed: () {},
                      ),
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      height: 25.0,
                    )),
                    Expanded(
                        child: Container(
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.black54,
                        textColor: Colors.white,
                        child: Text(
                          'Services',
                          textScaleFactor: 0.8,
                        ),
                        onPressed: () {},
                      ),
                      margin: EdgeInsets.only(left: 10.0, right: 20.0),
                      height: 25.0,
                    ))
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                child: ProfileImage(),
                margin: EdgeInsets.only(top: 23.0),
              ),
            ),
            UserName(),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.green,
                      textColor: Colors.white,
                      child: Text(
                        'Download CV',
                        textScaleFactor: 0.8,
                      ),
                      onPressed: () {},
                    ),
                    width: 143.0,
                    height: 42.0,
                  ),
                  Container(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.black,
                      textColor: Colors.white,
                      child: Text(
                        'Hire Me',
                        textScaleFactor: 0.8,
                      ),
                      onPressed: () {},
                    ),
                    width: 143.0,
                    height: 42.0,
                  ),
                ],
              ),
              margin: EdgeInsets.only(top: 18.0),
            ),
            Container(
              margin: EdgeInsets.only(top: 59.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Divider(
                height: 1,
                thickness: 1,
                color: Colors.black26,
              ),
            ),
            Container(
              child: Text(
                "About",
                style: TextStyle(fontSize: 43),
              ),
              margin: EdgeInsets.only(top: 12),
            ),
            Container(
              child: Text(
                "I am a person who is positive about every aspect of life."
                " There are many things I like to do, to see, and to experience."
                " I like to read, I like to write; I like to think, I like to dream;"
                " I like to talk, I like to listen. I like to see the sunrise in the morning,"
                " I like to see the moonlight at night.",
                style: TextStyle(fontSize: 12),
              ),
              margin: EdgeInsets.only(top: 12.0, left: 20.0, right: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16.0, left: 20.0),
                  width: 120.0,
                  height: 26.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.grey,
                    textColor: Colors.white,
                    child: Text(
                      'Get in Touch',
                      textScaleFactor: 0.8,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ],
        ));
  }
}

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      height: 120.0,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage('images/richkazz.jpeg')),
        borderRadius: BorderRadius.all(Radius.circular(60.0)),
      ),
    );
  }
}

class UserName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 14.0),
        child: Column(
          children: [
            Text(
              "Hello, i am",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            Text(
              "Edaware Karo",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            Container(
              child: Text(
                "Mobile developer",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12.0),
              ),
              margin: EdgeInsets.only(top: 14.0),
            )
          ],
        ));
  }
}
