import 'package:app/login_page.dart';
import 'package:app/start_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);
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
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 2.9,
                      left: 10,
                      right: 10,
                      bottom: 20),
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 20,
                  ),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.person,
                              color: Color.fromARGB(255, 252, 100, 133)),
                          labelText: 'Username',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 252, 100, 133)),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.email,
                              color: Color.fromARGB(255, 252, 100, 133)),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 252, 100, 133)),
                        ),
                      ),
                      TextField(
                        //password
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock,
                              color: Color.fromARGB(255, 252, 100, 133)),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 252, 100, 133)),
                        ),
                      ),
                      TextField(
                        //password
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock,
                              color: Color.fromARGB(255, 252, 100, 133)),
                          labelText: 'Confirm Password',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 252, 100, 133)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(
                      top: 10,
                      bottom: 60,
                      right: 30,
                      left: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                            child: SizedBox(
                                width: MediaQuery.of(context).size.width / 2.5,
                                height: 40,
                                child: Container(
                                  child: Material(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.transparent,
                                    elevation: 7,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(20),
                                      splashColor:
                                          Color.fromARGB(255, 252, 100, 133),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Sign Up ',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Icon(Icons.arrow_right_alt,
                                                color: Colors.white),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Color.fromARGB(255, 118, 8, 32),
                                        Color.fromARGB(255, 252, 100, 133),
                                      ],
                                    ),
                                  ),
                                ))),
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Already have an account? ",
                        style:
                            TextStyle(color: Color.fromARGB(255, 11, 11, 11))),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text("Sign In",
                          style: TextStyle(
                              color: Color.fromARGB(255, 252, 100, 133),
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
