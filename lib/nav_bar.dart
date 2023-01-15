import  "package:flutter/material.dart";
import 'package:sgconnectest/home.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  int _selectedIndex = 1;
  var screem = [
    Container(),
    Container(),
    HomeScreem(),
    Container(),
    Container(),
  ];
  Widget bottomNavbar(){
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40)
      ),
      child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index)=>setState(()=> _selectedIndex =  index),
          backgroundColor: Colors.white,
          selectedIconTheme: IconThemeData(color:Colors.lightGreen[600]),
          unselectedIconTheme: IconThemeData(color: Colors.grey)
          ,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                    color: _selectedIndex ==  0 ? Colors.lightGreen[300] :  Colors.transparent,
                    borderRadius: BorderRadius.circular(12)
                ),
                padding: const  EdgeInsets.all(6),
                child : Icon(Icons.search_outlined),
              ),
              label: " ",
            ),
            BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                      color: _selectedIndex ==  1 ? Colors.lightGreen[300] :  Colors.transparent,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  padding: const  EdgeInsets.all(6),
                  child : Icon(Icons.notifications_outlined),
                ),
                label: " "
            ),
            BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                      color: _selectedIndex ==  2 ? Colors.lightGreen[300] :  Colors.transparent,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  padding: const  EdgeInsets.all(6),
                  child : Icon(Icons.home_outlined),
                ),
                label: " "
            ),
            BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                      color: _selectedIndex ==  3 ? Colors.lightGreen[300] :  Colors.transparent,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  padding: const  EdgeInsets.all(6),
                  child : Icon(Icons.favorite_outline),
                ),

                label: " "
            ),
            BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                      color: _selectedIndex ==  4 ? Colors.lightGreen[300] :  Colors.transparent,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  padding: const  EdgeInsets.all(6),
                  child : Icon(Icons.work_outline),
                ),
                label: " "
            ),
          ]
      ),
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          screem[_selectedIndex],
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: bottomNavbar()
          )
        ],
      ),
    );
  }
}
