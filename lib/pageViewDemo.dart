import 'package:flutter/material.dart';
import 'package:flutter_gallery_3d/gallery3d.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  List<String> videoCarousel = [
    "assets/eiffel_tower.jpg",
    "assets/renailogo.png",
    "assets/fish.jpg",
    "assets/renaitv.png",
  ];
  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();

  Widget buildGallery3D(){
    return Gallery3D(
      itemCount: videoCarousel.length, 
      width: MediaQuery.of(context).size.width, 
      height: 160,
      isClip: true,
      //ellipseHeight: 50,
      itemConfig: GalleryItemConfig(
        width: 300,
        height: 160,
        radius: 15,
        isShowTransformMask: false,
        shadows: [
          BoxShadow(
            color: Color(0x90000000),
            offset: Offset(2, 0),
            blurRadius: 10
          ),
        ],
      ), 
      currentIndex: currentIndex,
      onItemChanged: (index){
        setState(() {
          this.currentIndex = index;
        });
      },
      onClickItem: (index) => print('No of Video:$index'),
      itemBuilder:(context, index) {
        return Image.asset(videoCarousel[index],
        fit: BoxFit.cover,);
      },);
  }
  @override
  Widget build(BuildContext context) {
    
  
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        itemCount: 3,
        itemBuilder: ((context,index){
          return Column(
            children: [
              buildGallery3D(),
              
            ],
          );
        }),),
    );
  }
}