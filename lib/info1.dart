import 'package:flutter/material.dart';


class info1 extends StatefulWidget {
  const info1({Key? key}) : super(key: key);

  @override
  _info1State createState() => _info1State();
}

 class _info1State extends State<info1> {



   


double bmi = 0;



   int value1 = 0;
   int value2 = 70;
   int value3 = 170;
   int _result = 0;

   String about (int _result){
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
               image: AssetImage("images/fi.png"),
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
                         padding: const EdgeInsets.only(left: 85, top: 20),
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
                         padding: const EdgeInsets.only(left: 80, top: 30),
                         child: Row(children: [
                           Text(value3.toString().toUpperCase(),
                               style: TextStyle(fontSize: 20)),
                           Row(children: [
                             Text(' Cm', style: TextStyle(fontSize: 20))
                           ],)
                         ],),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 30, top: 20),
                         child: Row(children: [
                           Slider(
                             min: 0,
                             max: 200,
                             value: value3.toDouble(),
                             divisions: 200,
                             label: '${value3.round()}',
                             onChanged: (value) {
                               setState(() {
                                 value3 = value.toInt();
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
                 padding: const EdgeInsets.only(top: 20, left: 80),
                 child: Row(children: <Widget>[
                   Container(
                     child: Column(children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.only(left: 85, top: 20),
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
                         padding: const EdgeInsets.only(left: 80, top: 30),
                         child: Row(children: [
                           Text(value2.toString().toUpperCase(),
                               style: TextStyle(fontSize: 20)),
                           Row(children: [
                             Text(' Kg', style: TextStyle(fontSize: 20))
                           ],)
                         ],),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 30, top: 20),
                         child: Row(children: [
                           Slider(
                             min: 0,
                             max: 120,
                             value: value2.toDouble(),
                             divisions: 120,
                             label: '${value2.round()}',
                             onChanged: (value) {
                               setState(() {
                                 value2 = value.toInt();
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
                           Text(value1.toString().toUpperCase(),
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
                             min: 0,
                             max: 100,
                             value: value1.toDouble(),
                             divisions: 100,
                             label: '${value1.round()}',
                             onChanged: (value) {
                               setState(() {
                                 value1 = value.toInt();
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


   int result() {
     int _result = (value2/((value3/100) * (value3/100))).round().toInt();

    return _result;
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
                     _result.toStringAsFixed(2)
                     ,style: TextStyle(
                       color: Colors.redAccent,
                       fontSize: 19.4,
                       fontWeight: FontWeight.w500,
                     ),
                   )
                       )),


               Expanded(
                 flex: 9,
                 child: Container(child: Text(about(_result.toInt()).toString())),
               )
             ],
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



