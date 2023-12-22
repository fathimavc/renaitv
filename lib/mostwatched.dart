import 'package:flutter/material.dart';

class MostWatched extends StatelessWidget {
  final imageList =[
  'assets/eiffel_tower.jpg',
  'assets/fish.jpg',
  'assets/eiffel_tower.jpg',
  'assets/fish.jpg',
  'assets/eiffel_tower.jpg',
  'assets/fish.jpg',
  ];
   MostWatched({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageList.length,
        itemBuilder: (context, index) => 
        
        Padding(
          padding: const EdgeInsets.only(right: 10.0,left: 10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                Image.asset(
                      imageList[index],
                      fit: BoxFit.cover,
                     width: 150,
                    ),
                    Positioned(
                      left: 110.0,
                      bottom: 2.0,
                      right: 5.0,
                      child: Container(
                        height: 12,
                        // width: 22,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          'PDF',
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 12.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
              ],
            ),
            
             ),
          ),
        ),
    );
  }
}