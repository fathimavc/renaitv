import 'package:flutter/material.dart';
import 'splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color.fromARGB(82, 27, 27, 36),
      ),
      home: const Scaffold(
        body: SplashScreen(),
        backgroundColor: Color.fromARGB(85, 85, 85, 100),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

