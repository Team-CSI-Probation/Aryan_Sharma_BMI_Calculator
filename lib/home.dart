import 'package:flutter/material.dart';
import 'package:untitled/info1.dart';
import 'package:untitled/info2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/fgh.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 140),
            child: Row(
              children: <Widget>[
                Text(
                  'Gender',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 75),
            child: Row(children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => info1()));
                },
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    primary: Colors.red
                ),

                child: CircleAvatar(
                  radius: 120,
                  backgroundImage: AssetImage("images/female1.png"),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 75),
            child: Row(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => info2()));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.red
                  ),
                  child: CircleAvatar(
                    radius: 120,
                    backgroundImage: AssetImage("images/male1.png"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
