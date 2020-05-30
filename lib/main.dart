import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white70,
          body: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text('Nigeria Times'),
                        Icon(
                          Icons.search,

                        )

                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Text('Nigerian politics'),


                ],
              )
            ],
          )

      ),

    );

  }
}
