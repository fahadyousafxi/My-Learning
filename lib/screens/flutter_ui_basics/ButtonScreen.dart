import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class ButtonScreen extends StatelessWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 55,
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
              onPressed: () {},
              child: Text(
                'Click here',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(height: 22,),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  elevation: 12,
                  shadowColor: Colors.green,
                  primary: Colors.amber,
                  onPrimary: Colors.brown,
                  padding: EdgeInsets.symmetric(horizontal: 44, vertical: 11),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),)),
              onPressed: () {},
              label: Text(
                'Click here',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
              ),
              icon: Icon(Icons.ads_click, color: Colors.red,),
            ),
            SizedBox(height: 22,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 44, vertical: 11),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  )),
              onPressed: () {},
              child: Text(
                'Click Me',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(height: 80,),
            TextButton.icon(
              style: TextButton.styleFrom(primary: Colors.red),
              onPressed: () {},
              label: const Text('Text Button'),
              icon: const Icon(Icons.draw_outlined, size: 33, color: Colors.blue,),
            ),
            SizedBox(height: 22,),
            TextButton(
                style: TextButton.styleFrom(primary: Colors.red, elevation: 10),
                onPressed: () {},
                child: Text('Text Button')),
            
            SizedBox(height: 80,),
            OutlinedButton(onPressed: (){}, child: Text('Login'),),

            GestureDetector(
              onTap: (){
                Fluttertoast.showToast(msg: 'You Pressed onTap On Container',
                  textColor: Colors.white,
                  backgroundColor: Colors.green,
                  gravity: ToastGravity.CENTER,
                  toastLength: Toast.LENGTH_SHORT,
                  fontSize: 20,

                );
              },
              child: Container(
                height: 60,

                alignment: Alignment.center,
                margin: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(color: Colors.green, width: 5),
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [Colors.pinkAccent, Colors.orange, Colors.yellow],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                ),

                child: Row(
                  children: [
                    SizedBox(width: 33,),
                    CircleAvatar(backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),),
                    Text('onTap On Container', style: TextStyle(fontSize: 22),),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
