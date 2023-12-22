import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Align(
          child:Image.asset(
            'assets/renaitv.png',
            height: 100,
            width: 150,),
            alignment: Alignment.topLeft,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25)
          )),
        actions: [
        IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.amber,
                  size: 30,)
            )
      ]
      ),
    );
  }
}