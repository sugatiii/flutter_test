import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 118, 8, 32),
                Color.fromARGB(255, 252, 100, 133),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Icon(Icons.thumb_up, size: 50, color: Colors.white)),
            Center(
                child: Text(
              'Fatmore App',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            )),
          ],
        ),
        Column(
          children: <Widget>[
            Image(
                image: AssetImage('asset/image-bg1.png'),
                width: 200,
                height: 200),
          ],
        ),
      ])),
    );
  }
}
