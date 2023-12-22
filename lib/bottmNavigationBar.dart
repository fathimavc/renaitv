import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'home.dart';
import 'radio.dart';
import 'chat.dart';
import 'descriptionPage.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  static List<Widget> pages=[
    Home(),
    RadioPage(),
    ChatPage(),
    DescriptionPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

           body: pages.elementAt(_currentIndex),
           
           bottomNavigationBar: 
  
               
               GNav(
                onTabChange: (value) {
                  setState(() {
                    _currentIndex = value;
                  });
                },
                gap: 8,
                backgroundColor: Color.fromARGB(84, 35, 35, 36),
                color: Colors.white38,
                activeColor: Colors.amber,
                iconSize: 25,
                tabBackgroundColor: Colors.black,
                tabBorderRadius: 60,
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                //tabMargin: EdgeInsets.all(10),
                tabs: [
                  GButton(
                          icon: Icons.home_outlined,
                          text: 'HOME',
                          ),
                        GButton(
                          icon: Icons.radio_outlined,
                          text: 'RADIO',
                          ),
                        GButton(
                          icon: Icons.chat_outlined,
                          text: 'CHAT',
                          ),
                        GButton(
                          icon: Icons.person_outline_sharp,
                          text: 'PROFILE',
                          ),
                ]),
       );
  }
}
