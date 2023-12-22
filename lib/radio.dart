import 'package:flutter/material.dart';
import 'appbar.dart';

class RadioPage extends StatelessWidget {
  const RadioPage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: const Color.fromARGB(85, 85, 85, 100),
      appBar: const PreferredSize(
          child: Appbar(), preferredSize: Size.fromHeight(100)),

         body:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Image.asset('assets/radio.png',
                        color: Colors.amber ,
                        height: 40,
                        width: 50,
                        alignment: Alignment.center,),
                    ),
                   

                     Padding(
                      padding: EdgeInsets.only(left: 2),
                      child: Text(
                        "RADIO",
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 38
                        ),
                      ),
                      ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),

                 Text(
                          "COMING SOON",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
              
                      Image.asset('assets/loading.png',
              color: Colors.white,
              ),
              ],
            ),
           
    );
  }
}