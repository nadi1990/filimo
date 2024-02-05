import 'dart:async';

import 'package:filimo/data/color.dart';
import 'package:filimo/screens/nav_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  double value = 2.0;
  double textOpacity = 0.0;
  double containerOpacity = 0.0;
  double containerSize = 1.5;

  late AnimationController animationController;
  late Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween<double>(begin: 60.0, end: 40.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastLinearToSlowEaseIn))
      ..addListener(() {
        setState(() {
          textOpacity = 1.0;
        });
      });

    animationController.forward();
    Timer(Duration(seconds: 2), () {
      setState(() {
        containerSize = 2.0;
        containerOpacity = 1.0;
        value = 1.1;
      });
    });

    Timer(Duration(seconds: 4),() {
      setState(() {
          Navigator.pushReplacement(context, PageTransition(targetPage: NavScreen()));
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 2000),
                curve: Curves.fastLinearToSlowEaseIn,
                height: size.height / value,
              ),
              AnimatedOpacity(
                opacity: textOpacity,
                duration: Duration(milliseconds: 2000),
                child: Text("Filimo",
                    style: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.w900,
                        fontSize: animation.value)),
              )
            ],
          ),
          Center(
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 5000),
              curve: Curves.fastLinearToSlowEaseIn,
              opacity: containerOpacity,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 5000),
                curve: Curves.easeInCirc,
                height: size.width / containerSize,
                width: size.width / containerSize,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/filimo.png"))),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PageTransition extends PageRouteBuilder{
  final Widget targetPage;

  PageTransition({required this.targetPage}):
        super(
          pageBuilder: (context,animation,anootherAnimation) => targetPage,
          transitionsBuilder: (context,animation,anootherAnimation,child){
            animation = CurvedAnimation(parent: animation,curve: Curves.linear);
            return Align(
              alignment: Alignment.topCenter,
              child: SizeTransition(
                sizeFactor: animation,
                child: targetPage,
                axis: Axis.vertical,
              ),
            );
          }
          ,transitionDuration: Duration(milliseconds: 2000)
      );
}


