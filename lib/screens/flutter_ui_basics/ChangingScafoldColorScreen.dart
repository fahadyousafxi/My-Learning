import 'package:flutter/material.dart';

class ChangingScafoldColorScreen extends StatefulWidget {
  const ChangingScafoldColorScreen({Key? key}) : super(key: key);

  @override
  State<ChangingScafoldColorScreen> createState() =>
      _ChangingScafoldColorScreenState();
}

class _ChangingScafoldColorScreenState
    extends State<ChangingScafoldColorScreen> {
  var b = Colors.orange;
  var massage = 'Color: orange';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: b,
      appBar: AppBar(
        title: Text('Changing Color and Text'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '  Statfull widget to change the color using the setstate function\n\n\n\n\n',
              style: TextStyle(fontSize: 27),
            ),
            Text(
              'Change Color\n',
              style: TextStyle(fontSize: 27, color: Colors.white),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
                  primary: Colors.red,
                  shadowColor: Colors.red,
                  elevation: 10,
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 44)),
              onPressed: () {
                setState(() {});
                massage = 'Color: "orange"';

                b = Colors.red;
              },
              child: Text('  Red  '),
            ),
            SizedBox(
              height: 22,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
                    primary: Colors.blue,
                    shadowColor: Colors.blue,
                    elevation: 10,
                    padding:
                        EdgeInsets.symmetric(vertical: 14, horizontal: 44)),
                onPressed: () {
                  setState(() {});
                  massage = 'Color: "Blue"';
                  b = Colors.blue;
                },
                child: Text('  Blue  ')),
            SizedBox(
              height: 22,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
                    primary: Colors.green,
                    shadowColor: Colors.green,
                    elevation: 10,
                    padding:
                        EdgeInsets.symmetric(vertical: 14, horizontal: 44)),
                onPressed: () {
                  setState(() {});
                  massage = 'Color: "Green"';
                  b = Colors.green;
                },
                child: Text('  Green  ')),
            SizedBox(
              height: 22,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
                    primary: Colors.grey,
                    shadowColor: Colors.grey,
                    elevation: 10,
                    padding:
                        EdgeInsets.symmetric(vertical: 14, horizontal: 44)),
                onPressed: () {
                  setState(() {});
                  massage = 'Color: Orange';
                  b = Colors.orange;
                },
                child: Text(
                  '  Reset  ',
                )),
            SizedBox(height: 22,),
            Text(massage),
          ],
        ),
      ),
    );
  }
}

