import 'package:bmi/Bmicalculation.dart';
import 'package:bmi/Resultpage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Gender.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final mainColor = Color(0xFF8E24AA);
  final iconColor = Colors.white;
  Gender? gender;
  int height = 156;
  int weightbtn = 62;
  int agebtn = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF5E35B1),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 90,
                            color: iconColor,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(fontSize: 20, color: iconColor),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: gender == Gender.male
                              ? Color(0xFFAA00FF)
                              : mainColor),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.venus,
                            color: iconColor,
                            size: 90,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(fontSize: 20, color: iconColor),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: gender == Gender.female
                              ? Color(0xFFAA00FF)
                              : mainColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: TextStyle(fontSize: 21, color: iconColor),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '$height',
                        style: TextStyle(
                            fontSize: 75,
                            fontWeight: FontWeight.bold,
                            color: iconColor),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(color: iconColor),
                      )
                    ],
                  ),
                  Slider(
                      inactiveColor: Colors.white,
                      value: height.toDouble(),
                      min: 120.0,
                      max: 225.0,
                      // divisions: 10,
                      onChanged: (double val) {
                        setState(() {
                          height = val.round();
                        });
                      }),
                ],
              ),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: mainColor),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: TextStyle(fontSize: 21, color: iconColor),
                        ),
                        Text(
                          '$weightbtn',
                          style: TextStyle(fontSize: 65, color: iconColor),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weightbtn = weightbtn + 1;
                                });
                              },
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weightbtn = weightbtn - 1;
                                });
                              },
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: mainColor),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: TextStyle(fontSize: 21, color: iconColor),
                        ),
                        Text(
                          '$agebtn',
                          style: TextStyle(fontSize: 65, color: iconColor),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  agebtn = agebtn + 1;
                                });
                              },
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  agebtn = agebtn - 1;
                                });
                              },
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: mainColor),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Bmicalculation b =
                  Bmicalculation(height: height, weight: weightbtn);

              String bmivalue = b.bmirealcacl();
              String bmimsg = b.bmiMessage();
              String bmiresult = b.getResult();
              print('mai andar aaya');
              print(bmivalue);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Resultpage(
                      bmimsg: bmimsg, bmiresult: bmivalue, result: bmiresult),
                ),
              );
            },
            child: Container(
              height: 80,
              width: double.infinity,
              color: Colors.red,
              alignment: Alignment.center,
              child: Text(
                'Calculate',
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
    );
  }
}
