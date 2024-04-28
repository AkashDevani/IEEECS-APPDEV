import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String userInput = '';
  String displayedText = '';

  void updateInput(String input) {
    setState(() {
      userInput = input;
    });
  }

  void showInput() {
    setState(() {
      displayedText = userInput;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'User Input:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              displayedText,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (value) {
                updateInput(value);
              },
              decoration: InputDecoration(
                hintText: 'Enter text',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: showInput,
              child: Text('Show Input'),
            ),
          ],
        ),
      ),
    );
  }
}
