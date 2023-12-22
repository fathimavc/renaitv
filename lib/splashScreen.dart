import 'dart:async';

import 'package:flutter/material.dart';
import 'bottmNavigationBar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   @override
  void initState(){
    super.initState();
    Timer(
      const Duration(
        seconds: 3
      ),
      () => Navigator.pushReplacement(
        context, MaterialPageRoute(
          builder: (context) => const BottomNav())
          )
      );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
          alignment: Alignment.center,
          child: Image.asset('assets/renailogo.png',
          width: 200,
          height: 300,),

        ),
    );
  }
}