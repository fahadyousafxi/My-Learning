import 'package:flutter/material.dart';

import '../../models/doctors.dart';

class DoctorDetailScreen extends StatelessWidget {
  final Doctors doctors;
  const DoctorDetailScreen({Key? key, required this.doctors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Details'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 100,),
            CircleAvatar(
              backgroundImage: doctors.photo != null ? AssetImage(doctors.photo) as ImageProvider : NetworkImage('') as ImageProvider,
              radius: 88, ),
            const SizedBox(height: 22,),
            Text(doctors.name,  style: TextStyle(color: Colors.blue)),
            Text(doctors.specilization,  style: TextStyle(color: Colors.green)),
            Text(doctors.address,  style: TextStyle(color: Colors.amber)),
            Text(doctors.timing, style: TextStyle(color: Colors.black),),
            Text(doctors.fee.toString(),  style: TextStyle(color: Colors.red),),
          ],
        ),
      ),
    );
  }
}
