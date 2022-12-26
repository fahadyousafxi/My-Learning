import 'package:flutter/material.dart';

import '../../models/doctors.dart';
import '../../utility/doctors_data_store.dart';

class GridViewBuilderStoredDataScreen extends StatelessWidget {
  const GridViewBuilderStoredDataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stored Data GridView Builder'),
      ),
      body: GridView.builder(
          itemCount: DoctorsDataStore().doctors.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.7),
          itemBuilder: (BuildContext context, int index) {
            Doctors doctors = DoctorsDataStore().doctors[index];
            return Stack(
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white54,
                        border: Border.all(color: Colors.green, width: 5))),
                Image.asset(
                  doctors.photo,
                  height: 300,
                  width: 300,
                ),
                Positioned(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: Colors.white54,
                            border: Border.all(color: Colors.green, width: 3)),
                        height: 50,
                        child: Center(child: Text(doctors.name)))),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.green, width: 5))),
              ],
            );
          }),
    );
  }
}
