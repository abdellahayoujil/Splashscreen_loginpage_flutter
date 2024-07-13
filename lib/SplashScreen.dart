import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newp/loginpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();

    _Sleep(Duration(seconds: 4));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 140, 186, 216),
      body: Center(
    
        //child: Image.network("https://i.pinimg.com/originals/06/df/a9/06dfa9d6eedb6ab5ab077fe108cefa81.jpg"),
      ),
    );
  }

  void _Sleep(Duration seconde) {
    //  print("Slepp");
    Timer(
        seconde,
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => loginpage())));
  }
}
