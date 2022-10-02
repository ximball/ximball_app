import 'package:flutter/material.dart';

import '../../pages/home/places_page.dart';
import '../../pages/home/settings_page.dart';
import '../../pages/home/user_page.dart';

class RoutesButtoms extends StatelessWidget {
  final int index = 0;
  const RoutesButtoms({Key? key, required index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      const UserPages(),
      const PlacePages(),
      const SettingPages(),
      const UserPages()
    ];
    return myList[index];
  }
}
