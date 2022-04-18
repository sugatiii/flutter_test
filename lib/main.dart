import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MainPage(),
    ),
  );
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double getData(BuildContext context) => MediaQuery.of(context).size.height;
  double getDataWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
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
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                  child: Icon(Icons.thumb_up, size: 50, color: Colors.white)),
              Center(
                  child: Text(
                "Fatamore App",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )),
            ],
          ),
        ),
        Positioned(
            right: -getData(context) * 0.4,
            bottom: -getDataWidth(context) * 0.1,
            child: Image(
                image: AssetImage('asset/image-bg1.png'),
                width: getData(context),
                height: getDataWidth(context) * 0.6)),
      ])),
    );
  }
}
