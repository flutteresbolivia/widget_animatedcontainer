import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _width = 100.0;
  var _height = 100.0;
  var color = Color(0xFff95693);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF8e25be),
        body: Center(
          child: AnimatedContainer(
            height: _height,
            width: _width,
            duration: Duration(seconds: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: color,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: color,
          onPressed: () {
            setState(() {
              _width = 200.0;
              _height = 200.0;
              color = Colors.red;
            });
          },
          icon: Icon(Icons.update),
          label: Text("Animar Container"),
        ),
      ),
    );
  }
}
