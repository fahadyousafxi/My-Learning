import 'package:flutter/material.dart';

class ImageAndCircleAvatarWidgetScreen extends StatelessWidget {
  const ImageAndCircleAvatarWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image and Circle Avatar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CircleAvatar(backgroundImage: AssetImage('assets/images/fahadkhan.JPG', ), radius: 50,),
          Image.asset('assets/images/fahad.JPG',width: 200, height: 200,),
          Image.asset('assets/images/fahadkhan.JPG', width: 200, height: 200, scale: 22,),
          Image.asset('assets/images/fahad.JPG', width: 200, height: 200,),
          Image.network('src'),
        ],
      ),
    );
  }
}
