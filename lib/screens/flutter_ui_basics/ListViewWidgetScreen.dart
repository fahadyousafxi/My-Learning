import 'package:flutter/material.dart';

class ListViewWidgetScreen extends StatelessWidget {
  const ListViewWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),
            ),
            title: Text('Shahid Afridi'),
            subtitle: Text('Allrounder'),
            trailing: Text('PAK'),
          ),
          Divider(height: 2, color: Colors.black,),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/faha.JPG'),
            ),
            title: Text('Babar Azam'),
            subtitle: Text('Batsman'),
            trailing: Text('PAK'),
          ),
          Divider(height: 2, color: Colors.black,),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),
            ),
            title: Text('Virat Kohli'),
            subtitle: Text('Batsman'),
            trailing: Text('IND'),
          ),
          Divider(height: 2, color: Colors.black,),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/faad.JPG'),
            ),
            title: Text('Jason Roy'),
            subtitle: Text('Batsman'),
            trailing: Text('ENG'),
          ),
          Divider(height: 2, color: Colors.black,),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),
            ),
            title: Text('Shaheen Afridi'),
            subtitle: Text('Boler'),
            trailing: Text('PAK'),
          ),
          Divider(height: 2, color: Colors.black,),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/fahad.JPG'),
            ),
            title: Text('Bomra'),
            subtitle: Text('Boler'),
            trailing: Text('IND'),
          ),
          Divider(height: 2, color: Colors.black,),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),
            ),
            title: Text('Shahid Afridi'),
            subtitle: Text('Allrounder'),
            trailing: Text('PAK'),
          ),
          Divider(height: 2, color: Colors.black,),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/fahadk.JPG'),
            ),
            title: Text('Babar Azam'),
            subtitle: Text('Batsman'),
            trailing: Text('PAK'),
          ),
          Divider(height: 2, color: Colors.black,),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),
            ),
            title: Text('Virat Kohli'),
            subtitle: Text('Batsman'),
            trailing: Text('IND'),
          ),
          Divider(height: 2, color: Colors.black,),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/faha.JPG'),
            ),
            title: Text('Jason Roy'),
            subtitle: Text('Batsman'),
            trailing: Text('ENG'),
          ),
          Divider(height: 2, color: Colors.black,),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),
            ),
            title: Text('Shaheen Afridi'),
            subtitle: Text('Boler'),
            trailing: Text('PAK'),
          ),
          Divider(height: 2, color: Colors.black,),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/fahad.JPG'),
            ),
            title: Text('Bomra'),
            subtitle: Text('Boler'),
            trailing: Text('IND'),
          ),
          Divider(height: 2, color: Colors.black,),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),
            ),
            title: Text('Shahid Afridi'),
            subtitle: Text('Allrounder'),
            trailing: Text('PAK'),
          ),
          Divider(height: 2, color: Colors.black,),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),
            ),
            title: Text('Babar Azam'),
            subtitle: Text('Batsman'),
            trailing: Text('PAK'),
          ),
          Divider(height: 2, color: Colors.black,),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),
            ),
            title: Text('Virat Kohli'),
            subtitle: Text('Batsman'),
            trailing: Text('IND'),
          ),
          Divider(height: 2, color: Colors.black,),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),
            ),
            title: Text('Jason Roy'),
            subtitle: Text('Batsman'),
            trailing: Text('ENG'),
          ),
          Divider(height: 2, color: Colors.black,),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),
            ),
            title: Text('Shaheen Afridi'),
            subtitle: Text('Boler'),
            trailing: Text('PAK'),
          ),
          Divider(height: 2, color: Colors.black,),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/fahadkhan.JPG'),
            ),
            title: Text('Bomra'),
            subtitle: Text('Boler'),
            trailing: Text('IND'),
          ),
          Divider(height: 2, color: Colors.black,),
          Card(color: Colors.blue,child: Text('    card',style: TextStyle(fontSize: 44),), elevation: 22, margin: EdgeInsets.all(11),)

        ],
      ),
    );
  }
}
