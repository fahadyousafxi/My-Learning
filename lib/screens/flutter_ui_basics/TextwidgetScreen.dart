import 'package:flutter/material.dart';

class TextWidgetScreen extends StatelessWidget {
  const TextWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      body:  Column(
        children: const [
          Text('\n\n\n   bold text',style: TextStyle(fontWeight: FontWeight.bold),),
          Text('\n   normal text',style: TextStyle(fontWeight: FontWeight.normal),),
          Text('\n   text font size',style: TextStyle(fontSize: 30), ),
          Text('\n   colored text',style: TextStyle(fontSize: 30, color: Colors.red), ),
          Text('\n   background color text',style: TextStyle(fontSize: 30, color: Colors.red, backgroundColor: Colors.lightGreenAccent), ),
          Text('\n   font weight of text',style: TextStyle(fontWeight: FontWeight.w200, fontSize: 30, color: Colors.red),),
          Text('\n   font weight of text',style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30, color: Colors.red),),
          Text('\n   italic font style of text',style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30, color: Colors.green, fontStyle: FontStyle.italic),),
          Text('\n   letterSpacing of text',style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25, color: Colors.red, letterSpacing: 5),),
          Text('\n   wordSpacing of text',style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25, color: Colors.red, wordSpacing: 11),),
        ],
      ),
    );
  }
}
