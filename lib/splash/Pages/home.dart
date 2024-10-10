// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inheritedwidget/splash/Pages/drawerPage.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawerpage(),
      body: Container(

      ),
    );
  }
}