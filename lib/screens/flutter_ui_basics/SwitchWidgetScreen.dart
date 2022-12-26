import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchWidgetScreen extends StatefulWidget {
  const SwitchWidgetScreen({Key? key}) : super(key: key);

  @override
  State<SwitchWidgetScreen> createState() => _SwitchWidgetScreenState();
}

class _SwitchWidgetScreenState extends State<SwitchWidgetScreen> {
  bool chickStatus = true;
  bool botten = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            chickStatus ? Text('Status: Online') : Text('Status: Offline'),
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Switch Status'),
                Switch(value: chickStatus, onChanged: (bool isCheck){
                  setState(() {
                    chickStatus = isCheck;
                  });
                })
              ],
            ),
            SizedBox(height: 100,),

            botten ? Image.asset('assets/images/on.png') : Image.asset('assets/images/off.png'),
            Switch(value: botten, onChanged: (bool isCheck){
              setState(() {
                botten = isCheck;
              });
            })

          ],
        ),
      ),
    );
  }
}
