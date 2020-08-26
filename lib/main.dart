import 'package:flutter/material.dart';

import 'package:marx_alarm_app/budilnik.dart';
import 'package:marx_alarm_app/budilnik_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomeState(),
      theme: ThemeData(
        primarySwatch: Colors.red,
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}

class MyHomeState extends StatelessWidget {
  final List<Budilnik> budilniks = [
    Budilnik(DateTime.now(), 1),
    Budilnik(DateTime.now(), 5),
    Budilnik(DateTime.now(), 6),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi'),
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(children:
            budilniks.map((budilnik){
              return BudilnikItem();
            }).toList(),
        ),
      ),
    );
  }
}
