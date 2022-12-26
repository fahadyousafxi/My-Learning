import 'package:flutter/material.dart';

class GridViewBuilderSimpleScreen extends StatelessWidget {
  const GridViewBuilderSimpleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple GridView Builder'),
      ),
      body: GridView.builder(
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 15),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 200,
              color: Colors.red,
              padding: EdgeInsets.all(33),
              child: Text('$index).  Hi',
                style: const TextStyle(fontSize: 22),
              ),
            );
          }),
    );
  }
}
