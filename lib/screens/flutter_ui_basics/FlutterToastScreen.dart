import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToastScreen extends StatelessWidget {
  const FlutterToastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Toast'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 12,
                  shadowColor: Colors.green,
                  primary: Colors.amber,
                  onPrimary: Colors.brown,
                  padding: EdgeInsets.symmetric(horizontal: 44, vertical: 11),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  )),
              onPressed: () {
                Fluttertoast.showToast(
                  msg: 'You pressed the default toast',
                );
              },
              child: Text(
                'Default Toast',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 12,
                  shadowColor: Colors.red,
                  primary: Colors.amber,
                  onPrimary: Colors.brown,
                  padding: EdgeInsets.symmetric(horizontal: 44, vertical: 11),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                      side: BorderSide(color: Colors.brown, width: 3))),
              onPressed: () {
                Fluttertoast.showToast(msg: 'You pressed the custom toast',
                    textColor: Colors.white,
                    backgroundColor: Colors.green,
                    gravity: ToastGravity.CENTER,
                    toastLength: Toast.LENGTH_SHORT,
                    fontSize: 25,

                );
              },
              child: Text(
                'Custom Toast',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              height: 30,
            ),

          ],
        ),
      ),
    );
  }
}
