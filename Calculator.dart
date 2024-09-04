import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String equation = "0";
  String result = "0";
  String operator = "";
  double num1 = 0;
  double num2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerRight,
            child: Text(
              equation,
              style: TextStyle(fontSize: 24),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerRight,
            child: Text(
              result,
              style: TextStyle(fontSize: 48),
            ),
          ),
          Expanded(
            child: Divider(),
          ),
          Row(
            children: [
              buildButton("7"),
              buildButton("8"),
              buildButton("9"),
              buildButton("/"),
            ],
          ),
          Row(
            children: [
              buildButton("4"),
              buildButton("5"),
              buildButton("6"),
              buildButton("*"),
            ],
          ),
          Row(
            children: [
              buildButton("1"),
              buildButton("2"),
              buildButton("3"),
              buildButton("-"),
            ],
          ),
          Row(
            children: [
              buildButton("."),
              buildButton("0"),
              buildButton("00"),
              buildButton("+"),
            ],
          ),
          Row(
            children: [
              buildButton("C"),
              buildButton("="),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildButton(String buttonText) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () => buttonPressed(buttonText),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }

  void buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        equation = "0";
        result = "0";
        operator = "";
        num1 = 0;
        num2 = 0;
      } else if (buttonText == "=") {
        if (operator.isNotEmpty) {
          num2 = double.parse(equation);

          if (operator == "+") {
            result = (num1 + num2).toString();
          } else if (operator == "-") {
            result = (num1 - num2).toString();
          } else if (operator == "*") {
            result = (num1 * num2).toString();
          } else if (operator == "/") {
            result = num2 != 0 ? (num1 / num2).toString() : "Error";
          }

          equation = result;
          operator = "";
        }
      } else if (buttonText == "+" ||
          buttonText == "-" ||
          buttonText == "*" ||
          buttonText == "/") {
        num1 = double.parse(equation);
        operator = buttonText;
        equation = "0";
      } else {
        if (equation == "0") {
          equation = buttonText;
        } else {
          equation += buttonText;
        }
      }
    });
  }
}
