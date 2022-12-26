import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController firstNumberController = TextEditingController();
  TextEditingController secondNumberController = TextEditingController();
  String value = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: firstNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'First Number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22))),
            ),
            SizedBox(
              height: 33,
            ),
            TextField(
              controller: secondNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Second Number',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(22)),
              ),
            ),
            SizedBox(
              height: 33,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      String no1 = firstNumberController.text;
                      String no2 = secondNumberController.text;

                      if (no1.isEmpty) {
                        Fluttertoast.showToast(msg: 'Enter First number');
                        return;
                      }
                      if (no2.isEmpty) {
                        Fluttertoast.showToast(msg: 'Enter second number');
                        return;
                      }
                      int first = int.parse(no1);
                      int second = int.parse(no2);
                      int result = first + second;
                      setState(() {
                        value = 'Result: ${result}';
                      });
                    },
                    child: Text("+")),
                ElevatedButton(
                    onPressed: () {
                      String no1 = firstNumberController.text;
                      String no2 = secondNumberController.text;

                      if (no1.isEmpty) {
                        Fluttertoast.showToast(msg: 'Enter First number');
                        return;
                      }
                      if (no2.isEmpty) {
                        Fluttertoast.showToast(msg: 'Enter second number');
                        return;
                      }
                      int first = int.parse(no1);
                      int second = int.parse(no2);
                      int result = first - second;
                      setState(() {
                        value = 'Result: ${result}';
                      });
                    },
                    child: Text("-")),
                ElevatedButton(
                    onPressed: () {
                      String no1 = firstNumberController.text;
                      String no2 = secondNumberController.text;

                      if (no1.isEmpty) {
                        Fluttertoast.showToast(msg: 'Enter First number');
                        return;
                      }
                      if (no2.isEmpty) {
                        Fluttertoast.showToast(msg: 'Enter second number');
                        return;
                      }
                      int first = int.parse(no1);
                      int second = int.parse(no2);
                      int result = first * second;
                      setState(() {
                        value = 'Result: ${result}';
                      });
                    },
                    child: Text("*")),
                ElevatedButton(
                    onPressed: () {
                      String no1 = firstNumberController.text;
                      String no2 = secondNumberController.text;

                      if (no1.isEmpty) {
                        Fluttertoast.showToast(msg: 'Enter First number');
                        return;
                      }
                      if (no2.isEmpty) {
                        Fluttertoast.showToast(msg: 'Enter second number');
                        return;
                      }
                      int first = int.parse(no1);
                      int second = int.parse(no2);
                      double result = first / second;
                      setState(() {
                        value = 'Result: ${result}';
                      });
                    },
                    child: Text('/')),
              ],
            ),
            SizedBox(
              height: 22,
            ),
            ElevatedButton(
                onPressed: () {
                  firstNumberController.clear();
                  secondNumberController.clear();
                  setState(() {
                    value = 'Result: No Values to Calculate';
                  });
                },
                child: Text(" C L E A R ")),
            SizedBox(
              height: 22,
            ),
            Text(' ${value}', style: TextStyle(fontSize: 22),),
          ],
        ),
      ),
    );
  }
}
