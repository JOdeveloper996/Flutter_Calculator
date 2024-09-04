import 'package:flutter/material.dart';
import 'package:flutterapp/Calculator.dart';
import 'package:flutterapp/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Calculator(),
    );
  }
}

// //
// class Calculator extends StatefulWidget {
//   @override
//   _CalculatorState createState() => _CalculatorState();
// }

// class _CalculatorState extends State<Calculator> {
//   String _output = "0"; // Store the output value displayed on screen

//   String _input = ""; // Store the current input

//   String _result = ""; // Store the final calculation result

//   // Update display text
//   void _updateDisplay(String text) {
//     setState(() {
//       if (text == "C") {
//         _input = "";
//         _result = "";
//         _output = "0";
//       } else if (text == "=") {
//         try {
//           _result = _calculateResult(_input);
//           _output = _result;
//         } catch (e) {
//           _output = "Error";
//         }
//       } else {
//         _input += text;
//         _output = _input;
//       }
//     });
//   }

//   // Simple calculation logic using Dart's eval-like functionality
//   String _calculateResult(String expression) {
//     try {
//       final result = double.parse(expression); // Evaluate the expression
//       return result.toString();
//     } catch (e) {
//       return "Error";
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Calculator'),
//       ),
//       body: Column(
//         children: <Widget>[
//           // Display panel
//           Expanded(
//             child: Container(
//               alignment: Alignment.bottomRight,
//               padding: EdgeInsets.all(24),
//               child: Text(
//                 _output,
//                 style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//           Divider(height: 1),
//           // Button grid
//           Column(
//             children: [
//               _buildButtonRow(["7", "8", "9", "/"]),
//               _buildButtonRow(["4", "5", "6", "*"]),
//               _buildButtonRow(["1", "2", "3", "-"]),
//               _buildButtonRow(["C", "0", "=", "+"]),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   // Helper method to create a row of buttons
//   Widget _buildButtonRow(List<String> buttons) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: buttons.map((text) {
//         return _buildButton(text);
//       }).toList(),
//     );
//   }

//   // Helper method to create a button widget
//   Widget _buildButton(String text) {
//     return Expanded(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: ElevatedButton(
//           onPressed: () => _updateDisplay(text),
//           child: Text(
//             text,
//             style: TextStyle(fontSize: 24),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Monster Car',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           //  centerTitle: true,
//           backgroundColor: Colors.red.shade400,
//           title: const Text(
//             'Monster Car',
//             style: TextStyle(fontSize: 25.5, color: Colors.white),
//           ),
//           actions: [
//             InkWell(
//               child: Text("Auto Bar"),
//               onDoubleTap: () => print("double"),
//               onTap: () {
//                 print("hello world");
//               },
//             ),
//             Icon(Icons.menu),
//             IconButton(
//                 onPressed: () {
//                   print("Hello World");
//                 },
//                 icon: Icon(Icons.wifi))
//           ]),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
