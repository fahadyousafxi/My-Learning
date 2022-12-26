import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text('List View Builder Simple function'),
        ),
        body: ListView.builder(
            itemCount: 50,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                shadowColor: Colors.blue,
                margin: EdgeInsets.all(10),
                elevation: 22,

                child: Text(
                  '${index + 1}\).   Hi this is Card', // or index.tostring()
                  style: TextStyle(fontSize: 40),
                ),

              );
            }));
  }
}
