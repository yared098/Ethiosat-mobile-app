// ignore_for_file: prefer_const_constructors

import 'package:ethio_sat_2/widget/naviget_drawer.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  static const String routeName = '/homePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        drawer: navigationDrawer(),
        body: Center(child: Text("This is home page")));
  }
}
