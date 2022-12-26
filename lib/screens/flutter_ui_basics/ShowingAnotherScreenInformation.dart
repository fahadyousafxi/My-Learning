import 'package:flutter/material.dart';
import '../../models/doctors.dart';
import '../../utility/doctors_data_store.dart';
import 'DoctorDetailScreen.dart';

class ShowingAnotherScreenInformation extends StatelessWidget {
  const ShowingAnotherScreenInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tap to Show Detail Information'),
      ),
      body: ListView.builder(
          itemCount: DoctorsDataStore().doctors.length,
          itemBuilder: (context, index){
            Doctors d = DoctorsDataStore().doctors[index];
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorDetailScreen(doctors: d,)));
                    },
                    leading: CircleAvatar(backgroundImage: AssetImage(d.photo),),
                    title: Text(d.name),
                    subtitle: Text(d.specilization),
                  ),
                  Divider(height: 2, thickness: 4,),
                ],
              ),
            );

          })
    );
  }
}
