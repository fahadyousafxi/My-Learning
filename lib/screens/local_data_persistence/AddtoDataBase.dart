import 'package:flutter/material.dart';
import '../../screens/local_data_persistence/ViewDatabase.dart';
import '../../screens/local_data_persistence/db/Database_Helper.dart';
import '../../screens/local_data_persistence/models/Student.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DataBase extends StatefulWidget {
  const DataBase({Key? key}) : super(key: key);

  @override
  State<DataBase> createState() => _DataBaseState();
}

class _DataBaseState extends State<DataBase> {
  late String name, address, institute, mobileNumber, monthlyFee, admissionFee;

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hostel Students Data Base App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter Name',
                      label: Text('Name'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      )),
                  validator: (String? text) {
                    if (text == null || text.isEmpty) {
                      return 'Please fill this field';
                    }
                    name = text;

                    return null;
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter Your Address',
                      label: Text('Address'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      )),
                  validator: (String? text) {
                    if (text == null || text.isEmpty) {
                      return 'Please fill this field';
                    }
                    address = text;

                    return null;
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter Name of Your Institute',
                      label: Text('Institute'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      )),
                  validator: (String? text) {
                    if (text == null || text.isEmpty) {
                      return 'Please fill this field';
                    }
                    institute = text;

                    return null;
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  maxLength: 11,
                  decoration: InputDecoration(
                      hintText: 'Enter Your Mobile Number',
                      label: Text('Mobile Number'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      )),
                  validator: (String? text) {
                    if (text == null || text.isEmpty) {
                      return 'Please fill this field';
                    }
                    mobileNumber = text;

                    return null;
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Fee per Month',
                      label: Text('Monthly Fee'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      )),
                  validator: (String? text) {
                    if (text == null || text.isEmpty) {
                      return 'Please fill this field';
                    }
                    monthlyFee = text;

                    return null;
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Fee of Admission',
                      label: Text('Admission Fee'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      )),
                  validator: (String? text) {
                    if (text == null || text.isEmpty) {
                      return 'Please fill this field';
                    }
                    admissionFee = text;
                    return null;
                  },
                ),
                SizedBox(
                  height: 22,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22))),
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              Student s = Student(
                                name: name,
                                address: address,
                                institute: institute,
                                mobileNumber: mobileNumber,
                                monthlyFee: int.parse(monthlyFee),
                                admissionFee: int.parse(admissionFee),
                              );
                              int result = await DatabaseHelper.instance
                                  .insertStudent(s);

                              if (result > 0) {
                                Fluttertoast.showToast(msg: 'Saved', backgroundColor: Colors.green);
                              } else {
                                Fluttertoast.showToast(msg: 'Failed');
                              }
                            }
                          },
                          child: Text('Save')),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22))),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ViewDataBase()),
                            );
                          },
                          child: Text('View')),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {
                      formKey.currentState!.reset();
                    },
                    child: Text('Clear Fields')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
