import 'package:flutter/material.dart';
import 'dart:math';



class info2 extends StatefulWidget {
  const info2({Key? key}) : super(key: key);

  @override
  _info2State createState() => _info2State();
}

class _info2State extends State<info2> {

  int height = 180;
  int weight = 70;
  int age = 25;
  String _result = "";
  double bmi = 0;

  String calculateBmi(int weight,int height){
    double bmi = weight/pow(height/100, 2);
    return bmi.toStringAsFixed(1);
  }

  String about (double bmi){
    if( bmi >= 25) {
      return "You have higher than normal body weight, try to exercise more";
    }
    else if(bmi >18){
      return "You have a normal body weight, Good job";
    }
    else{
      return "You have lower than normal body weight,you can eat a bit more";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
                padding: const EdgeInsets.only(top: 50, left: 80),
                child: Row(children: <Widget>[
                  Container(
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 70, top: 20),
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
                        padding: const EdgeInsets.only(left: 90, top: 20),
                        child: Row(children: [
                          Text(height.toString().toUpperCase(),
                              style: TextStyle(fontSize: 20)),
                          Row(children: [
                            Text(' Cm', style: TextStyle(fontSize: 20))
                          ],)
                        ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 20),
                        child: Row(children: [
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              inactiveTrackColor: Color(0xFF8D8E98),
                              activeTrackColor: Colors.white,
                              thumbColor: Color(0xFFEB1555),
                              overlayColor: Color(0x29EB1555),
                              thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                              overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                            ),
                            child: Slider(
                                value: height.toDouble(),
                                min: 120.0,
                                max: 220.0,
                                onChanged: (double newValue) {
                                  setState(() {
                                    height = newValue.round();
                                  });
                                }),
                          ),
                        ]),),
                    ]),

                    height: 194,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Color(0xFF6BCABE)
                    ),
                  ),
                ]),),

              Padding(
                padding: const EdgeInsets.only(top: 20, left: 80),
                child: Row(children: <Widget>[
                  Container(
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 65, top: 20),
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
                        padding: const EdgeInsets.only(left: 90, top: 20),
                        child: Row(children: [
                          Text(weight.toString().toUpperCase(),
                              style: TextStyle(fontSize: 20)),
                          Row(children: [
                            Text(' Kg', style: TextStyle(fontSize: 20))
                          ],)
                        ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 20),
                        child: Row(children: [
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              inactiveTrackColor: Color(0xFF8D8E98),
                              activeTrackColor: Colors.white,
                              thumbColor: Color(0xFFEB1555),
                              overlayColor: Color(0x29EB1555),
                              thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                              overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                            ),
                            child: Slider(
                                value: weight.toDouble(),
                                min: 30.0,
                                max: 120.0,
                                onChanged: (double newValue) {
                                  setState(() {
                                    weight = newValue.round();
                                  });
                                }),
                          ),
                        ]),),
                    ]),

                    height: 194,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Color(0xFF6BCABE),
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
                        padding: const EdgeInsets.only(left: 80, top: 20),
                        child: Row(children: [
                          Text(age.toString().toUpperCase(),
                              style: TextStyle(fontSize: 20)),
                          Row(children: [
                            Text(' Years', style: TextStyle(fontSize: 20))
                          ],)
                        ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 20),
                        child: Row(children: [
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              inactiveTrackColor: Color(0xFF8D8E98),
                              activeTrackColor: Colors.white,
                              thumbColor: Color(0xFFEB1555),
                              overlayColor: Color(0x29EB1555),
                              thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                              overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                            ),
                            child: Slider(
                                value: age.toDouble(),
                                min: 1.0,
                                max: 120.0,
                                onChanged: (double newValue) {
                                  setState(() {
                                    age = newValue.round();
                                  });
                                }),
                          ),
                        ]),),
                    ]),
                    height: 194,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Color(0xFF6BCABE),
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
                        _result = calculateBmi(weight, height);
                        showAlertDialog(context);},
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  side: BorderSide(color: Colors.blue))),
    ))
                       ),
                ),

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
      title: Text("Your BMI",style: TextStyle(fontSize: 40)),
      content: Container(
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                      child: Text(
                        _result.toString()
                        ,style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                      )
                  )),


              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Expanded(
                    flex: 9,
                    child: Container(child: Text(about(double.parse(_result)),style: TextStyle(fontSize: 30)),
                    )
                ),
              )],
          ),
        ),
      ),
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







