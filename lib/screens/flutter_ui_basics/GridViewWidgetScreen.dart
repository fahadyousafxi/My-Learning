import 'package:flutter/material.dart';

class GridViewWidgetScreen extends StatelessWidget {
  const GridViewWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: [
          Container(color: Colors.orange, width: 100,height: 100,),
          Container(color: Colors.blue, width: 100,height: 100,),
          Container(color: Colors.amberAccent, width: 100,height: 100,),
          Container(color: Colors.red, width: 100,height: 100,),
          Container(color: Colors.purple, width: 100,height: 100,),
          Container(color: Colors.orange, width: 100,height: 100,),
          Container(color: Colors.blue, width: 100,height: 100,),
          Container(color: Colors.amberAccent, width: 100,height: 100,),
          Container(color: Colors.red, width: 100,height: 100,),
          Container(color: Colors.purple, width: 100,height: 100,),
          Container(color: Colors.greenAccent, width: 100,height: 100,),
          Container(color: Colors.greenAccent, width: 100,height: 100,),
          Container(color: Colors.orange, width: 100,height: 100,),
          Container(color: Colors.blue, width: 100,height: 100,),
          Container(color: Colors.amberAccent, width: 100,height: 100,),
          Container(color: Colors.red, width: 100,height: 100,),
          Container(color: Colors.purple, width: 100,height: 100,),
          Container(color: Colors.greenAccent, width: 100,height: 100,),
        ],

      ),
    );
  }
}
