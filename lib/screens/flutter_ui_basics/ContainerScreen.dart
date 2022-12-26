import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('container'),
      ),
      body: Container(
        height: 300,
        width: 300,
        alignment: Alignment.center,
        margin: EdgeInsets.all(50),
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.green, width: 5),
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
        ),
        child: Container(
          height: 200,
          width: 150,
          alignment: Alignment.center,
          margin: EdgeInsets.all(50),
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

          child: Text('"this is linear gradient in boxdecoration of \nthe container"'),
        ),
      ),
    );
  }
}
