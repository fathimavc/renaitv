import 'package:flutter/material.dart';

class DescriptionPageButtons extends StatelessWidget {
  const DescriptionPageButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         TextButton(
        onPressed: () {
          
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.video_collection,
            color: Colors.black,),
            const Text(
              'WATCH NOW',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10
              ),
            ),
          ],
        ),
      ),
      Column(
        children: [
          Icon(Icons.add,
            color: Colors.amber,
            size: 25,),
            Text('My List',
            style: TextStyle(color: Colors.amber,
            fontSize: 12
            ),)
        ],
      ),
      Column(
        children: [
          Icon(Icons.share,
            color: Colors.amber,
            size: 25,),
            Text('Share',
            style: TextStyle(color: Colors.amber,
            fontSize: 12
            ),)
        ],
      ),

        ],
      ),
    );
  }
}