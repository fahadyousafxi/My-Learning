import 'package:flutter/material.dart';
import '../../models/doctors.dart';
import '../../utility/doctors_data_store.dart';

class ListViewBuilderStoredDataScreen extends StatelessWidget {
  const ListViewBuilderStoredDataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Builder Stored Data'),
      ),
      body: ListView.builder(
          itemCount: DoctorsDataStore().doctors.length,
          itemBuilder: (BuildContext context, int index){
            Doctors doctor = DoctorsDataStore().doctors[index];
            return Card(
              color: Colors.amberAccent,
              shadowColor: Colors.black,
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text('${index+1}\).', style: TextStyle(fontSize: 22),),
                    Image.asset(doctor.photo, width: 150, height: 150,),
                    SizedBox(width: 25,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name: ${doctor.name}'),
                        Text('Spacilization: ${doctor.specilization}'),
                        Text('Adderess: ${doctor.address}'),
                        Text('Timing: ${doctor.timing}'),
                        Text('Fee:  ${doctor.fee}'),
                      ],
                    )
                  ],
                ),
              ),
            );

      })
    );
  }
}
