import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluter Help',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text("Angelina"),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            radius: 50.0,
          ),
          Text(
            "John Wick",
            style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontFamily: "Pacifico",
                fontWeight: FontWeight.bold),
          ),
          Text(
            "FLUTTER DEVELOPER",
            style: TextStyle(
                color: Colors.teal.shade100,
                letterSpacing: 2.5,
                fontSize: 20.0,
                fontFamily: "Mate",
                fontWeight: FontWeight.bold),
          ),
          Container(
            height: 20,
            width: 200,
            child: Divider(
              color: Colors.white,
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: ListTile(
              leading: Icon(
                Icons.call,
                color: Colors.teal,
              ),
              title: Text(
                "+124 44343555",
                style: TextStyle(
                  fontSize: 20, fontFamily: "Times New Roman",
                  // color: Colors.teal.shade100,
                  color: Colors.teal.shade800,
                ),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.teal,
              ),
              title: Text(
                "SaddamAfzal07@gmail.com",
                style: TextStyle(
                  fontSize: 20, fontFamily: "Times New Roman",
                  // color: Colors.teal.shade100,
                  color: Colors.teal.shade800,
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
