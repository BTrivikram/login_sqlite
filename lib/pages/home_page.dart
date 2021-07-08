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
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    MaterialApp(
                      theme: ThemeData.light(),
                    );
                  });
                },
                icon: Icon(Icons.radio_button_on))
          ],
        ),
        body: ListView(
          children: w.widgetList,
        ),
        drawer: Drawer(
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SafeArea(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  'LOG OUT',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
