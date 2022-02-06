// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ethio_sat_2/home_page.dart';
import 'package:flutter/material.dart';

Container widget_continour(
        int index, BuildContext context, DocumentSnapshot<Object?> files) =>
    Container(
      margin: EdgeInsets.all(6),
      height: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.yellow),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => home_page(
                            files: files,
                          )));
            },
            child: Container(
              height: 140,
              margin: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    files["name"],
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Frequency",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Symbol rate",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(files["Frequency"]),
                      SizedBox(
                        width: 60,
                      ),
                      Text(files["Symbol rate"]),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        " * FEC",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(files["FEC"]),
                      Text(" * Satellite",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(files["Satellite"]),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 1,
            top: 10,
            child: Container(
              margin: EdgeInsets.only(left: 10, top: 5),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.yellow[200]),
              child: files["image"] != "null"
                  ? CircleAvatar(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow[200],
                            borderRadius: BorderRadius.circular(7),
                            image: DecorationImage(
                                image: NetworkImage(files["image"]),
                                fit: BoxFit.cover)),
                      ),
                    )
                  : Container(
                      decoration: BoxDecoration(
                          color: Colors.yellow[200],
                          borderRadius: BorderRadius.circular(7),
                          image: DecorationImage(
                              image: AssetImage("assets/ethiosat.png"),
                              fit: BoxFit.cover)),
                    ),
            ),
          )
        ],
      ),
    );
