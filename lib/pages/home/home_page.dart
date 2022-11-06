// ignore: duplicate_ignore
// ignore: duplicate_ignore
// ignore_for_file: unused_import, duplicate_ignore

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:xinbal/pages/search/search_page.dart';
import 'package:xinbal/utils/Image_util.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: _buscador(),
    );
  }

  Widget _buscador() {
    return PreferredSize(
      preferredSize: Size.fromHeight(90.0),
      child: Container(
        margin: EdgeInsets.only(top: 30.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(0, 255, 255, 255),
          title: Container(
            child: Card(
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0),
                      hintText: "Buscar lugar",
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.search))),
                ),
              ),
            ),
          ),
          leading: Image.asset("assets/icons/icon.png"),
        ),
      ),
    );
  }
}
