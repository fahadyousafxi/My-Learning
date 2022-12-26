import 'dart:ui';

import 'package:flutter/material.dart';

class WhatsAppScreen extends StatelessWidget {
  const WhatsAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            'WhatsApp',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),

          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search_rounded)),

            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined))
          ],
          elevation: 3,

        ),
        body: ListView(
          children: const [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),
              ),
              title: Text('khalid mehmood'),
              subtitle: Text('sahi da'),
              trailing: Text('3:09 PM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/fahad.JPG'),
              ),
              title: Text('khalid mehmood'),
              subtitle: Text('sahi da'),
              trailing: Text('3:09 PM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(''),
              ),
              title: Text('khalid mehmood'),
              subtitle: Text('sahi da'),
              trailing: Text('3:09 PM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),
              ),
              title: Text('khalid mehmood'),
              subtitle: Text('sahi da'),
              trailing: Text('3:09 PM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/fahad.JPG'),
              ),
              title: Text('khalid mehmood'),
              subtitle: Text('sahi da'),
              trailing: Text('3:09 PM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),
              ),
              title: Text('khalid mehmood'),
              subtitle: Text('sahi da'),
              trailing: Text('3:09 PM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(''),
              ),
              title: Text('khalid mehmood'),
              subtitle: Text('sahi da'),
              trailing: Text('3:09 PM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),
              ),
              title: Text('khalid mehmood'),
              subtitle: Text('sahi da'),
              trailing: Text('3:09 PM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),
              ),
              title: Text('khalid mehmood'),
              subtitle: Text('sahi da'),
              trailing: Text('3:09 PM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),
              ),
              title: Text('khalid mehmood'),
              subtitle: Text('sahi da'),
              trailing: Text('3:09 PM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/fahad.JPG'),
              ),
              title: Text('khalid mehmood'),
              subtitle: Text('sahi da'),
              trailing: Text('3:09 PM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(''),
              ),
              title: Text('khalid mehmood'),
              subtitle: Text('sahi da'),
              trailing: Text('3:09 PM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),
              ),
              title: Text('khalid mehmood'),
              subtitle: Text('sahi da'),
              trailing: Text('3:09 PM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/fahad.JPG'),
              ),
              title: Text('khalid mehmood'),
              subtitle: Text('sahi da'),
              trailing: Text('3:09 PM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),
              ),
              title: Text('khalid mehmood'),
              subtitle: Text('sahi da'),
              trailing: Text('3:09 PM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(''),
              ),
              title: Text('khalid mehmood'),
              subtitle: Text('sahi da'),
              trailing: Text('3:09 PM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/fahad.JPG'),
              ),
              title: Text('khalid mehmood'),
              subtitle: Text('sahi da'),
              trailing: Text('3:09 PM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(''),
              ),
              title: Text('khalid mehmood'),
              subtitle: Text('sahi da'),
              trailing: Text('3:09 PM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),
              ),
              title: Text('khalid mehmood'),
              subtitle: Text('sahi da'),
              trailing: Text('3:09 PM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(''),
              ),
              title: Text('khalid mehmood'),
              subtitle: Text('sahi da'),
              trailing: Text('3:09 PM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),
              ),
              title: Text('khalid mehmood'),
              subtitle: Text('sahi da'),
              trailing: Text('3:09 PM'),
            ),

          ],
        )

    );
  }
}
