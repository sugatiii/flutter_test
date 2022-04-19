import 'package:flutter/material.dart';
import 'package:app/login_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);
  double getDataSmall(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getDataBig(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: -getDataSmall(context) / 3,
            right: -getDataSmall(context) / 3,
            child: Container(
              width: getDataSmall(context),
              height: getDataSmall(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
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
          ),
          Positioned(
            top: -getDataBig(context) / 8,
            left: -getDataBig(context) / 8,
            child: Container(
              child: Center(
                child: Text(
                  'Fatamore App',
                  style: TextStyle(
                      fontFamily: "Pacifico",
                      fontSize: 30,
                      color: Colors.white),
                ),
              ),
              width: getDataBig(context),
              height: getDataBig(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
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
          ),
          Center(
              child: Container(
            child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 10,
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  splashColor: Colors.white,
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    }));
                  },
                  child: Center(
                    child: Text(
                      "GET STARTED",
                      style: TextStyle(
                          fontFamily: "Pacifico",
                          fontSize: 13,
                          color: Colors.white),
                    ),
                  ),
                )),
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 118, 8, 32),
                  Color.fromARGB(255, 252, 100, 133),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
