// ignore_for_file: prefer_const_constructors

import 'package:ethio_sat_2/drawer_pages/drawer_body.dart';
import 'package:ethio_sat_2/drawer_pages/drawer_header.dart';
import 'package:ethio_sat_2/drawer_pages/page_1.dart';
import 'package:ethio_sat_2/drawer_pages/page_2.dart';
import 'package:ethio_sat_2/drawer_pages/page_3.dart';
import 'package:ethio_sat_2/drawer_pages/page_4.dart';
import 'package:ethio_sat_2/drawer_pages/page_5.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class navigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(),
          createDrawerBodyItem(
            icon: Icons.home,
            text: 'home',
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => homePage())),
          ),
          createDrawerBodyItem(
            icon: Icons.account_circle,
            text: 'new channals',
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => new_channal())),
          ),
          createDrawerBodyItem(
            icon: Icons.event_note,
            text: 'Dish worker',
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Dish_worked())),
          ),
          Divider(),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 50,
              ),
              Text("more"),
            ],
          ),
          createDrawerBodyItem(
            icon: Icons.notifications_active,
            text: 'privecy policy',
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => privecy_policy())),
          ),
          createDrawerBodyItem(
            icon: Icons.contact_phone,
            text: 'Contact Info',
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => contactPage())),
          ),
          ListTile(
            title: Text('App version 1.0.0'),
            subtitle: Text("©yaredsoft.org"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
