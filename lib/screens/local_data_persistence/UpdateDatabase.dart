import 'package:flutter/material.dart';
import '../../screens/local_data_persistence/models/Student.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'db/Database_Helper.dart';

class UpdateDataBase extends StatefulWidget {
  final Student student;
  const UpdateDataBase({Key? key, required this.student}) : super(key: key);

  @override
  State<UpdateDataBase> createState() => _UpdateDataBaseState();
}

class _UpdateDataBaseState extends State<UpdateDataBase> {

  late String name, address, institute, mobileNumber, monthlyFee, admissionFee;

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Students Data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 12,),
                TextFormField(
                  initialValue: widget.student.name,
                  decoration: InputDecoration(
                      hintText: 'Enter Name',
                      label: Text('Name'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      )
                  ),
                  validator: (String? text){
                    if(text == null || text.isEmpty){
                      return 'Please fill this field';
                    }
                    name = text;

                    return null;
                  },
                ),
                SizedBox(height: 12,),
                TextFormField(
                  initialValue: widget.student.address,
                  decoration: InputDecoration(
                      hintText: 'Enter Your Address',
                      label: Text('Address'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      )
                  ),
                  validator: (String? text){
                    if(text == null || text.isEmpty){
                      return 'Please fill this field';
                    }
                    address = text;

                    return null;
                  },
                ),
                SizedBox(height: 12,),
                TextFormField(
                  initialValue: widget.student.institute,
                  decoration: InputDecoration(
                      hintText: 'Enter Name of Your Institute',
                      label: Text('Institute'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      )
                  ),
                  validator: (String? text){
                    if(text == null || text.isEmpty){
                      return 'Please fill this field';
                    }
                    institute = text;

                    return null;
                  },
                ),
                SizedBox(height: 12,),
                TextFormField(
                  initialValue: widget.student.mobileNumber,
                  keyboardType: TextInputType.number,
                  maxLength: 11,
                  decoration: InputDecoration(
                      hintText: 'Enter Your Mobile Number',
                      label: Text('Mobile Number'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      )
                  ),
                  validator: (String? text){
                    if(text == null || text.isEmpty){
                      return 'Please fill this field';
                    }
                    mobileNumber = text;

                    return null;
                  },
                ),
                SizedBox(height: 12,),
                TextFormField(
                  initialValue: widget.student.monthlyFee.toString(),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Fee per Month',
                      label: Text('Monthly Fee'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      )
                  ),
                  validator: (String? text){
                    if(text == null || text.isEmpty){
                      return 'Please fill this field';
                    }
                    monthlyFee = text;

                    return null;
                  },
                ),
                SizedBox(height: 12,),
                TextFormField(
                  initialValue: widget.student.admissionFee.toString(),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Fee of Admission',
                      label: Text('Admission Fee'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      )
                  ),
                  validator: (String? text){
                    if(text == null || text.isEmpty){
                      return 'Please fill this field';
                    }
                    admissionFee = text;
                    return null;
                  },
                ),
                SizedBox(height: 22,),
                ElevatedButton(onPressed: () async {
                  if(formKey.currentState!.validate()) {
                    Student s = Student(
                      id: widget.student.id,
                      name: name,
                      address: address,
                      institute: institute,
                      mobileNumber: mobileNumber,
                      monthlyFee: int.parse(monthlyFee),
                      admissionFee: int.parse(admissionFee),
                    );
                    int result = await DatabaseHelper.instance.updateStudent(s);

                    if (result > 0) {
                      Fluttertoast.showToast(msg: 'Updated Successful', backgroundColor: Colors.green);
                      Navigator.pop(context, 'done');
                    } else {
                      Fluttertoast.showToast(msg: 'Failed');
                    }



                  }
                }, child: Text('Update')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
