import 'package:flutter/material.dart';

class AppBarWidgetScreen extends StatelessWidget {
  const AppBarWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search_rounded)),

            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined))
          ],
          elevation: 3,
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 100),
        child: Text('App Bar', style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold, color: Colors.red, ),),
      )
    );
  }
}
