import 'package:flutter/material.dart';

class Resultpage extends StatelessWidget {
  String? bmimsg;
  String? bmiresult;
  String? result;
  Resultpage({this.bmimsg, this.bmiresult, this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5E35B1),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Text(
              'Your Result',
              style: TextStyle(
                  color: Colors.red, fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF5E35B1)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      '$result',
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xFFB2FF59),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      '$bmiresult',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 90,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Text(
                      '$bmimsg',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF69F0AE),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 80,
                width: double.infinity,
                color: Colors.red,
                alignment: Alignment.center,
                child: Text(
                  'ReCalculate BMI',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
