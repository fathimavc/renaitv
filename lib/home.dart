import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'appbar.dart';
import 'recent.dart';
import 'mostviewed.dart';
import 'trending.dart';
import 'fiqh.dart';
import 'quran.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List videoCarousel = [
    {"id": 1, "image_path": "assets/eiffel_tower.jpg"},
    {"id": 2, "image_path": "assets/renailogo.png"},
    {"id": 3, "image_path": "assets/fish.jpg"},
    {"id": 4, "image_path": "assets/renaitv.png"},
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(85, 85, 85, 100),
      appBar: const PreferredSize(
          child: Appbar(), preferredSize: Size.fromHeight(60)),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 1),
            child: Recent(),
  
          ),
          SizedBox(
            height: 10,
          ),

           Padding(
            padding: EdgeInsets.only(left: 5,bottom: 8),
            child: Text(
              "CATEGORIES",

              style: TextStyle(color: Colors.amber,
              fontSize: 10),
            ),
          ),

          Container(
            color: Colors.black,
            child: MostViewed(),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.black,
            child: Trending(),
          ),

          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.black,
            child: Fiqh(),
          ),

          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.black,
            child: Quran(),
          ),
          
        ],
      ),
      
    );
  }
}
