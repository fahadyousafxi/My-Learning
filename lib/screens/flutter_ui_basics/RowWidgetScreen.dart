import 'package:flutter/material.dart';

class RowWidgetScreen extends StatelessWidget {
  const RowWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.blue,
            width: 200,
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlutterLogo(),
                Container(
                  color: Colors.red,
                  width: 30,
                  height: 30,
                ),
                Container(
                  color: Colors.purple,
                  width: 30,
                  height: 30,
                ),
                Container(
                  color: Colors.amber,
                  width: 30,
                  height: 30,
                ),
              ],
            ),
          ),
          Container(
            child: Text('this is row'),
            height: 180,
            width: 150,
            alignment: Alignment.center,
            margin: EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.green, width: 5),
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: [Colors.pinkAccent, Colors.orange, Colors.yellow],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
          ),
          Container(
            color: Colors.red,
            width: 50,
            height: 230,
          ),
        ],
      ),
    );
  }
}
