// ignore_for_file: camel_case_types, must_be_immutable, use_key_in_widget_constructors, non_constant_identifier_names, prefer_const_constructors, prefer_final_fields, unused_field, avoid_unnecessary_containers

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ethio_sat_2/widget/continour_widget.dart';
import 'package:flutter/material.dart';

class search_catagory extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabLayoutExampleState();
  }
}

class _TabLayoutExampleState extends State<search_catagory>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late TextEditingController _controler_search = TextEditingController();
  late String _search_bar_text = "Ebs tv";

  @override
  void setState(VoidCallback fn) {
    _search_bar_text = _controler_search.text;
    super.setState(fn);
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
    _tabController.animateTo(2);
  }

  static const List<Tab> _tabs = [
    Tab(icon: Icon(Icons.tv), child: Text('Free channal')),
    Tab(icon: Icon(Icons.sports_basketball), text: 'Sport channal'),
    Tab(icon: Icon(Icons.movie), text: 'movies channal'),
    Tab(icon: Icon(Icons.live_tv), text: 'Live  channal'),
    // Tab(icon: Icon(Icons.looks_5), text: 'other'),
    // Tab(icon: Icon(Icons.looks_6), text: 'Tab Six'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              elevation: 0,
              title: Container(
                padding: EdgeInsets.only(top: 0),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: TextField(
                    controller: _controler_search,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {
                            setState(() {
                              searched_file("Local", "name");
                              searched_file("sport", "name");
                              searched_file("movies", "name");
                              searched_file("Local", "name");
                            });
                          },
                        ),
                        hintText: '     Search...',
                        border: InputBorder.none),
                  ),
                ),
              ),
              bottom: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelStyle:
                    const TextStyle(fontStyle: FontStyle.italic),
                overlayColor:
                    MaterialStateColor.resolveWith((Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.white;
                  }
                  if (states.contains(MaterialState.focused)) {
                    return Colors.white;
                  } else if (states.contains(MaterialState.hovered)) {
                    return Colors.pinkAccent;
                  }

                  return Colors.transparent;
                }),
                indicatorWeight: 10,
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: const EdgeInsets.all(5),
                indicator: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.pink,
                ),
                isScrollable: true,
                physics: BouncingScrollPhysics(),
                onTap: (int index) {},
                enableFeedback: true,
                tabs: _tabs,
              ),
              backgroundColor: Colors.yellow),
          body: TabBarView(
            physics: BouncingScrollPhysics(),
            children: [
              searched_file("Local", "name"),
              searched_file("sport", "name"),
              searched_file("movies", "name"),
              searched_file("Local", "name"),
            ],
          ),
        ),
      ),
    );
  }

  Container searched_file(String search_type, String s_item) {
    String names = _controler_search.text;
    return Container(
      child: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection(search_type)
            .where(s_item, isEqualTo: names)
            .snapshots(),
        builder: (BuildContext ctx, _snapshoot) {
          if (_snapshoot.hasData) {
            return ListView.builder(
                itemCount: _snapshoot.data!.docs.length,
                itemBuilder: (BuildContext ctx, index) {
                  DocumentSnapshot dess = _snapshoot.data!.docs[index];
                  if (search_type == "Local") {
                    return widget_continour(index, context, dess);
                  } else if (search_type == "sport") {
                    return widget_continour(index, context, dess);
                  } else if (search_type == "movies") {
                    return widget_continour(index, context, dess);
                  }
                  return Card(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(dess['name']),
                        SizedBox(
                          height: 20,
                        ),
                        Text(dess['$s_item']),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text(dess['name']), Text(dess['$s_item'])],
                        )
                      ],
                    ),
                  );
                });
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Text name_textMethod(String name) => Text(
        name,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      );
}
