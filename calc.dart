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
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  double result = 0;

  void add() {
    setState(() {
      double num1 = double.parse(_controller1.text);
      double num2 = double.parse(_controller2.text);
      result = num1 + num2;
    });
  }

  void subtract() {
    setState(() {
      double num1 = double.parse(_controller1.text);
      double num2 = double.parse(_controller2.text);
      result = num1 - num2;
    });
  }

  void multiply() {
    setState(() {
      double num1 = double.parse(_controller1.text);
      double num2 = double.parse(_controller2.text);
      result = num1 * num2;
    });
  }

  void divide() {
    setState(() {
      double num1 = double.parse(_controller1.text);
      double num2 = double.parse(_controller2.text);
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        result = double.infinity;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _controller1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter number 1'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _controller2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter number 2'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: add,
              child: Text('Add'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: subtract,
              child: Text('Subtract'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: multiply,
              child: Text('Multiply'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: divide,
              child: Text('Divide'),
            ),
            SizedBox(height: 20),
            Text(
              'Result: ${result.toString()}',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
