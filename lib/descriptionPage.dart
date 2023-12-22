//import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'appbar.dart';
import 'descriptionPageButtons.dart';
import 'mostwatched.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(85, 85, 85, 100),
        appBar: const PreferredSize(
            child: Appbar(), preferredSize: Size.fromHeight(60)),
        body: ListView(
          children: [
          
                Padding(
                  padding: EdgeInsets.only(top: 3, left: 15),
                  child: 
                      Text(
                        "DESCRIPTION",
                        style: TextStyle(color: Colors.white),
                        // textAlign: TextAlign.start,
                      ),
                  
                ),
                Container(
                    height: 360,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 10, left: 10, right: 10),
                          child: Image.asset(
                            'assets/eiffel_tower.jpg',
                            height: 150,
                            width: 300,
                            fit: BoxFit.cover,
                            
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Navothanam Pauraohityam',
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 15), 
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Haneef Kayakodi',
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 15), 
                        ),
                        SizedBox(
                            height: 15,
                           ),

                           Padding(
                             padding: const EdgeInsets.only(left: 10,right: 40),
                             child: Text(
                              'Navothanam, Pauraohityam moolyangalodu yudham prakhyapicha parohathyam moolyangalodu yudham prakhyapicha parohathyam moolyangalodu yudham prakhyapicha parohathyam',
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 12,
                                  wordSpacing: 1
                                ),
                                textAlign: TextAlign.justify,
                              ),
                           ),
                            SizedBox(
                            height: 15,
                           ),

                           DescriptionPageButtons(),
                      ],
                    ),
                 ),

                 Padding(
                  padding: EdgeInsets.only(top: 5,left: 10),
                  child: Text(
                    'RELATED',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),),
                  SizedBox(
                    height: 8,
                  ),
                  MostWatched()
             
          ],
        ),
        );
  }
}
