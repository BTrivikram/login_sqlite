import 'package:flutter/material.dart';

import 'package:login_sqlite/components/components/widget_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    WidgetList w = WidgetList();

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Home'),
          ),
          body: ListView(
            children: w.widgetList,
          )),
    );
  }
}
