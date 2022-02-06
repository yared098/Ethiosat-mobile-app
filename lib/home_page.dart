// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  DocumentSnapshot<Object?> files;
  home_page({required this.files});

  // const home_page(DocumentSnapshot<Object?> files, {Key? key})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text(files["name"]),
        backgroundColor: Colors.yellow,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/ethiosat.png"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(8),
                color: Colors.pink),
            margin: EdgeInsets.all(10),
            child: files["image"] != "null"
                ? CircleAvatar(
                    child: Container(
                      height: 200,
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
          Center(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "frequency",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(files["Frequency"])
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Polarization",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(files["Polarization"])
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Symbol rate",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(files["Symbol rate"])
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
