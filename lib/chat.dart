import 'package:flutter/material.dart';
import 'appbar.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(85, 85, 85, 100),
      appBar: const PreferredSize(
          child: Appbar(), preferredSize: Size.fromHeight(60)),
      body: Container(
        padding: EdgeInsets.only( left: 10, right: 10),
        margin: EdgeInsets.only(left: 20,right: 20,top: 50),
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(200, 0, 0, 0),
              Color.fromARGB(0, 0, 0, 0),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Column(
          children: [
            Text(
              'ASSISTANCE',
              style: TextStyle(color: Colors.white, fontSize: 15),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80,right: 80),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  //elevation: 10.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'CALL',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                      width: 30,
                      child: Image.asset(
                        'assets/phone.png',
                        color: Colors.grey,
                        height: 20,
                        width: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80,right: 80),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'CHAT',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                      width: 30,
                      child: Image.asset(
                        'assets/whatsapp.png',
                        height: 20,
                        width: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
