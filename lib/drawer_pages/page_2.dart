// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:ethio_sat_2/widget/naviget_drawer.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Dish_worked extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("dish worker"),
        ),
        drawer: navigationDrawer(),
        body: Center(child: Text("This is contacts page")));
  }
}
