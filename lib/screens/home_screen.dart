import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/components/buttons.dart';
import 'package:newsapp/utils/text_styles.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                          child: Text('The New York Time', style: headerStyle)),
                      button(height: 50, width: 50, child: Icon(Icons.search)),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                          child:
                              Text('Nigerian Politics ', style: headerStyle)),
                      button(
                        height: 30,
                        width: 70,
                        child: Center(child: Text('Show all')),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 9,
                  itemBuilder: (_, index) {
                    return Container(
                      height: 120,
                      width: 200,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(),
                    );
                  },
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 5),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(child: Text('Middle East', style: headerStyle)),
                    button(
                        height: 30,
                        width: 70,
                        child: Center(child: Text('Show all'))),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 9,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    title: Text(
                        'Egypt is on Edge as Security  Tightens Over Protest'),
                    subtitle: Row(
                      children: <Widget>[
                        Text('Sept. 26, 2019'),
                        SizedBox(width: 10),
                        Text('.'),
                        SizedBox(width: 10),
                        Text('1:41 PM')
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
