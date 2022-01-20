

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class info2 extends StatefulWidget {
  const info2({Key? key}) : super(key: key);

  @override
  _info2State createState() => _info2State();
}

class _info2State extends State<info2> {
  final weight = TextEditingController();
  final height = TextEditingController();

  @override
  void dispose() {
    weight.dispose();
    height.dispose();
    super.dispose();
  }




  String result(int a, int b){
    double bmi = b/pow(a/100, 2);
    return bmi.toStringAsFixed(1);
  }
  double _value = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/jhg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 80),
                child: Row(children: <Widget>[
                  Container(
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 65, top: 30),
                        child: Row(children: <Widget>[
                          Text(
                            'Height',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ]
                        ),
                      ),

                      Padding(
                          padding: const EdgeInsets.only(left: 5, top: 20),
                          child: new SizedBox(
                            height: 70,
                            width: 200,
                            child:
                            new TextField(
                              decoration: new InputDecoration(
                                  labelText: "Enter your Height in cm"),
                              controller: height,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ], // Only numbers can be entered
                            ),
                          )),
                    ]),

                    height: 194,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.green,
                    ),
                  ),
                ]),),

              Padding(
                padding: const EdgeInsets.only(top: 20, left: 80),
                child: Row(children: <Widget>[
                  Container(
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 65, top: 30),
                        child: Row(children: <Widget>[
                          Text(
                            'Weight',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ]
                        ),
                      ),

                      Padding(
                          padding: const EdgeInsets.only(left: 5, top: 20),
                          child: new SizedBox(
                            height: 70,
                            width: 200,
                            child:
                            new TextField(
                              decoration: new InputDecoration(
                                  labelText: "Enter your Weight in Kg"),
                              controller: weight,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ], // Only numbers can be entered
                            ),
                          )),
                    ]),

                    height: 194,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.green,
                    ),
                  ),
                ]),),

              Padding(
                padding: const EdgeInsets.only(top: 20, left: 80),
                child: Row(children: <Widget>[
                  Container(
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 85, top: 20),
                        child: Row(children: <Widget>[
                          Text(
                            'Age',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ]
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80, top: 30),
                        child: Row(children: [
                          Text(_value.toString(),
                              style: TextStyle(fontSize: 20)),
                          Row(children: [
                            Text(' Years', style: TextStyle(fontSize: 20))
                          ],)
                        ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 20),
                        child: Row(children: [
                          Slider(
                            min: 0.0,
                            max: 100.0,
                            value: _value,
                            divisions: 100,
                            label: '${_value.round()}',
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          )
                        ]),
                      ),
                    ]),

                    height: 194,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.green,
                    ),
                  ),
                ]),),


              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: new SizedBox(
                  height: 80,
                  width: 300,
                  child: ElevatedButton(
                    child: Text("Calculate",
                        style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      showAlertDialog(context);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: BorderSide(color: Colors.red))),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Your BMI"),
      content: Text(result(weight.text.length,height.text.length).toString()),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}



