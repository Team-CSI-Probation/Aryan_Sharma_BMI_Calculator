import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyHomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/fgh.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Text('BMI Calculator',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
      ),
    );
  }
}
