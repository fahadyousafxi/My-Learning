import 'package:flutter/material.dart';

class StackWidgetScreen extends StatelessWidget {
  const StackWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 350,
              height: 350,
              decoration: const BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.all(Radius.circular(33))),
            ),
            Container(
              color: Colors.green,
              width: 250,
              height: 250,
            ),
            Container(
              color: Colors.blue,
              width: 200,
              height: 200,
            ),
            Container(
              color: Colors.orange,
              width: 150,
              height: 150,
            ),
            Positioned(
              left: 22,
              bottom: -80,
              child: Container(
                width: 50,
                height: 150,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22)),
                  color: Colors.amber,
                ),
              ),
            ),
            Positioned(
                right: 22,
                bottom: -80,
                child: Container(
                  width: 50,
                  height: 150,
                  decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(22),
                          topRight: Radius.circular(22))),
                )),
            Positioned(
                left: 110,
                top: 110,
                child: Container(
                  width: 130,
                  height: 30,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          topRight: Radius.circular(22))),
                )),
            Positioned(
                left: 110,
                bottom: 110,
                child: Container(
                  width: 130,
                  height: 30,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(22),
                          bottomRight: Radius.circular(22))),
                )),
            Image.asset('assets/images/fahadkhan.JPG', scale: 40,),


          ],
        ),
      ),
    );
  }
}
