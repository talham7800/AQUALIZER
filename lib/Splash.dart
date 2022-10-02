import 'package:flutter/material.dart';
import 'package:fyp/Login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    _navigatehome();
  }

  _navigatehome() async {
    await Future.delayed(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/123.jpg',
                    ),
                    fit: BoxFit.fitHeight),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blue,
                    Colors.cyan,
                    Colors.lightBlueAccent,
                    //Colors.blue,
                  ],
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/logo.png'), fit: BoxFit.fill),
                  ),
                ),
                // Text(
                //   'Aqua Analyzer',
                //   style: TextStyle(
                //       fontSize: 40,
                //       fontWeight: FontWeight.bold,
                //       fontFamily: 'GrapeNuts',
                //       color: Colors.black),
                // ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ));
  }
}
