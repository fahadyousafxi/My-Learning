import 'package:flutter/material.dart';
import '../../screens/local_data_persistence/UpdateDatabase.dart';
import '../../screens/local_data_persistence/db/Database_Helper.dart';
import '../../screens/local_data_persistence/models/Student.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ViewDataBase extends StatefulWidget {
  const ViewDataBase({Key? key}) : super(key: key);

  @override
  State<ViewDataBase> createState() => _ViewDataBaseState();
}

class _ViewDataBaseState extends State<ViewDataBase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View of Data'),
      ),
      body: FutureBuilder<List<Student>>(
        future: DatabaseHelper.instance.getAllStudents(),
        builder: (BuildContext context, AsyncSnapshot<List<Student>> snapshot){
          if(!snapshot.hasData){
            return const Center(child: CircularProgressIndicator());
          }else{
            if(snapshot.data!.isEmpty){
              return const Center(child: Text('No Record'));
            }else{
              List<Student> students = snapshot.data!;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: students.length,
                    itemBuilder: (context, index){
                    Student s = students[index];
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.amber, width: 5),
                        borderRadius: BorderRadius.circular(20),
                            color: Colors.green[50]
                      ),
                      margin: EdgeInsets.only(bottom: 20),
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('ID:  ${s.id}'),
                                Text('Name:  ${s.name}'),
                                Text('Address:  ${s.address}'),
                                Text('Institute:  ${s.institute}'),
                                Text('Mobile Number:  ${s.mobileNumber}'),
                                Text('Monthly Fee:  ${s.monthlyFee}'),
                                Text('Admission Fee:  ${s.admissionFee}'),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              IconButton(onPressed: () async {
                                String result = await Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateDataBase(student: s,)));
                                if(result == 'done'){
                                  setState(() {

                                  });
                                }
                              }, 
                                  icon: Icon(Icons.edit, color: Colors.green,)),
                              IconButton(onPressed: (){
                                showDialog(
                                  barrierDismissible: false,
                                    context: context, builder: (context){
                                  return AlertDialog(
                                    title: Text('Confirmation!!'),
                                    content: Text('Do you want to delete?'),
                                    actions: [
                                      TextButton(onPressed: (){
                                        Navigator.of(context).pop();
                                      }, child: Text('No')),
                                      TextButton(onPressed: () async {

                                        Navigator.of(context).pop();
                                        int result = await DatabaseHelper.instance.deleteStudent(s.id!);
                                        if(result > 0)
                                          {
                                            Fluttertoast.showToast(msg: 'Deleted') ;
                                            setState(() {

                                            });
                                          }
                                      }, child: Text('Yes')),

                                    ],
                                  );
                                });
                              }, icon: Icon(Icons.delete, color: Colors.red)),
                            ],
                          )
                        ],
                      ),
                    );
                }),
              );
            }
          }
        },
      ),

      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Placeholder(
      //           fallbackHeight: 222,
      //         ),
      //         SizedBox(
      //           height: 50,
      //         ),
      //         Row(
      //           // crossAxisAlignment: CrossAxisAlignment.stretch,
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //             Expanded(
      //                 child: ElevatedButton(
      //                     style: ElevatedButton.styleFrom(
      //                         primary: Colors.red,
      //                         shape: RoundedRectangleBorder(
      //                             borderRadius: BorderRadius.circular(22))),
      //                     onPressed: () {},
      //                     child: Text('Delete'))),
      //             SizedBox(
      //               height: 10,
      //               width: 20,
      //             ),
      //             Expanded(
      //                 child: ElevatedButton(
      //                     style: ElevatedButton.styleFrom(
      //                         primary: Colors.green,
      //                         shape: RoundedRectangleBorder(
      //                             borderRadius: BorderRadius.circular(22))),
      //                     onPressed: () {
      //                       Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateDataBase()),);
      //                     },
      //                     child: Text('Update'))),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
