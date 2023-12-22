import 'package:flutter/material.dart';
import 'pageViewDemo.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Recent extends StatelessWidget {
  const Recent({super.key});

  @override
  Widget build(BuildContext context) {
     List videoCarousel = [
    {"id": 1, "image_path": "assets/eiffel_tower.jpg"},
    {"id": 2, "image_path": "assets/renailogo.png"},
    {"id": 3, "image_path": "assets/fish.jpg"},
    {"id": 4, "image_path": "assets/renaitv.png"},
  ];
  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();

    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 15),
        height: 200,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15,
              top: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'RECENT UPLOADS',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ),
              Container(
                width: 400,
                height: 160,
                child: PageViewDemo(),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: videoCarousel.asMap().entries.map(
            (entry) {
              print(entry);
              print(entry.key);
              return GestureDetector(
                onTap: () => carouselController.animateToPage(entry.key),
                child: Container(
                  width: currentIndex == entry.key ? 17 : 7,
                  height: 7.0,
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentIndex == entry.key
                          ? Colors.amber
                          : Colors.white),
                ),
              );
            },
          ).toList(),
        ),
          ],
        ),
      ),
    );
  }
}