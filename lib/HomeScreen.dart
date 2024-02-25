import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double myOpacity = 1;
  double myLeftPosition = 0.0;
  double myTopPosition = 0.0;
  double myBottomPosition = 0.0;
  double myRightPosition = 0.0;
  double myTurns = 0;
  double myScale = 1;
  double myWidth = 50;
  double myHeight = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.red,
              child: AnimatedOpacity(
                opacity: myOpacity,
                duration: Duration(seconds: 1),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (myOpacity == 1) {
                        myOpacity = 0.5;
                      } else {
                        myOpacity = 1;
                      }
                    });
                  },
                  child: Container(
                    width: 10,
                    height: 10,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
              child: Stack(children: [
                AnimatedPositioned(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        myTopPosition = myTopPosition + 10;
                        myLeftPosition = myLeftPosition + 10;
                      });
                    },
                    child: Container(
                      width: 20,
                      height: 20,
                      color: Colors.white,
                    ),
                  ),
                  duration: Duration(seconds: 1),
                  top: myTopPosition,
                  left: myLeftPosition,
                )
              ]),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.pink,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                AnimatedRotation(
                  turns: myTurns,
                  duration: Duration(seconds: 1),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (myTurns == 1) {
                          myTurns = 2;
                        } else {
                          myTurns = 1;
                        }
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Image(
                        image: AssetImage('images/profile.JPG'),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.yellow,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                AnimatedScale(
                  scale: myScale,
                  duration: Duration(seconds: 1),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (myScale == 1.0) {
                          myScale = myScale + 0.8;
                        } else {
                          myScale = 1;
                        }
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Image(
                        image: AssetImage('images/profile.JPG'),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.black,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                AnimatedContainer(
                  width: myWidth,
                  height: 50,
                  duration: Duration(seconds: 1),
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          if (myWidth == 50) {
                            myWidth = myWidth + 50;
                          } else {
                            myWidth = 50;
                          }
                        },
                      );
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
