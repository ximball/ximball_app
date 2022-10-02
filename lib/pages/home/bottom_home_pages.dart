// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proyectoviajes/pages/home/home_page.dart';
import 'package:proyectoviajes/pages/home/places_page.dart';
import 'package:proyectoviajes/pages/home/settings_page.dart';
import 'package:proyectoviajes/pages/home/user_page.dart';

class BHomePages extends StatefulWidget {
  const BHomePages({super.key});

  @override
  // ignore: no_logic_in_create_state
  State<BHomePages> createState() => _BHomePagesState();
}

class _BHomePagesState extends State<BHomePages> {
  var currentIndex = 0;
  int _currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    //RUTA DE LAS PAGINAS EN EL NAVBAR HOME
    List pagesB = <Widget>[
      const HomePages(),
      const PlacePages(),
      const SettingPages(),
      const UserPages(),
    ];

    return Scaffold(
      body: pagesB[currentIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        height: screenWidth * .155,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
              offset: Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: screenWidth * .024),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
                HapticFeedback.lightImpact();
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                SizedBox(
                  width: screenWidth * .2125,
                  child: Center(
                    child: AnimatedContainer(
                      duration: Duration(seconds: 2),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: index == currentIndex ? screenWidth * .12 : 0,
                      width: index == currentIndex ? screenWidth * .2125 : 0,
                      decoration: BoxDecoration(
                        color: index == currentIndex
                            ? Color.fromARGB(255, 167, 245, 186).withOpacity(.2)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: screenWidth * .2125,
                  alignment: Alignment.center,
                  child: Icon(
                    listOfIcons[index],
                    size: screenWidth * .076,
                    color: index == currentIndex
                        ? Color(0x9D5DC959)
                        : Colors.black26,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.map_rounded,
    Icons.settings_rounded,
    Icons.person_rounded,
  ];
}
