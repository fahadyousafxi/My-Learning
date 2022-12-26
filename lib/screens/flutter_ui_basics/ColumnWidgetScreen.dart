import 'package:flutter/material.dart';

class ColumnWidgetScreen extends StatelessWidget {
  const ColumnWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(color: Colors.red, width: 150, height: 150, alignment: Alignment.center,child: Text('this is container'),),
          Text('this is column'),
          Container(color: Colors.green, width: 150, height: 150,),
          FlutterLogo(size: 150,),
          Container(
            height: 200,
            width: 150,
            alignment: Alignment.center,
            margin: EdgeInsets.all(50),
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.green, width: 5),
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: [Colors.pink, Colors.orange, Colors.teal],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
