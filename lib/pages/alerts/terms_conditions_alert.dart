import 'package:flutter/material.dart';

import '../home/home_page.dart';
import '../home/places_page.dart';
import '../home/user_page.dart';

class Hola extends StatefulWidget {
  const Hola({super.key});

  @override
  State<Hola> createState() => _HolaState();
}

class _HolaState extends State<Hola> {
  var currentIndex = 0;
  int _currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _kTabPages = <Widget>[
      const HomePages(),
      const PlacePages(),
      const UserPages(),
    ];
    // ignore: no_leading_underscores_for_local_identifiers
    final _kBottmonNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded), label: 'Inicio'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.where_to_vote_outlined), label: 'Lugares'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.person_pin), label: 'Configuracion'),
    ];

    //assert(_kTabPages.length == _kBottmonNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      selectedItemColor: Colors.green,
      iconSize: 25.0,
      selectedFontSize: 14.0,
      unselectedFontSize: 12.0,
      items: _kBottmonNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return Scaffold(
      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
