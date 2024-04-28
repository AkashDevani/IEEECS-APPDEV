import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String message;

  @override
  void initState() {
    super.initState();
    // Initialization of state
    message = "Hello, World!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('initState Example'),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}
