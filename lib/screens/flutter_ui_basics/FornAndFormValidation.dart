import 'package:flutter/material.dart';

class FornAndFormValidation extends StatefulWidget {
  const FornAndFormValidation({Key? key}) : super(key: key);

  @override
  State<FornAndFormValidation> createState() => _FornAndFormValidationState();
}

class _FornAndFormValidationState extends State<FornAndFormValidation> {
  late int english, math, science, islamiat, ss, urdu;
  late String obtainMarks = 'Obtain Marks: ',
      percentage = 'Percentage: ',
      grade = 'Grade: ';

  var myFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form and Form Vaidation'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(33),
          child: Form(
            key: myFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'D M C',
                  style: TextStyle(fontSize: 44),
                ),
                SizedBox(
                  height: 22,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  validator: (String? txt) {
                    if (txt == null || txt.isEmpty) {
                      return "Please provide english marks";
                    }
                    english = int.parse(txt);
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: 'English Marks', label: Text('English')),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  validator: (String? txt) {
                    if (txt == null || txt.isEmpty) {
                      return "Please provide math marks";
                    }
                    math = int.parse(txt);
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: 'Math Marks', label: Text('Math')),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  validator: (String? txt) {
                    if (txt == null || txt.isEmpty) {
                      return "Please provide science marks";
                    }
                    science = int.parse(txt);
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: 'Science Marks', label: Text('Science')),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  validator: (String? txt) {
                    if (txt == null || txt.isEmpty) {
                      return "Please provide Social Study marks";
                    }
                    ss = int.parse(txt);
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: 'S S Marks', label: Text('S S')),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  validator: (String? txt) {
                    if (txt == null || txt.isEmpty) {
                      return "Please provide Urdu marks";
                    }
                    urdu = int.parse(txt);
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: 'Urdu Marks', label: Text('Urdu')),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  validator: (String? txt) {
                    if (txt == null || txt.isEmpty) {
                      return "Please provide islamiat marks";
                    }
                    islamiat = int.parse(txt);
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: 'Islamiat Marks', label: Text('Islamiat')),
                ),
                SizedBox(
                  height: 33,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22))),
                        onPressed: () {
                          myFormKey.currentState?.reset();
                        },
                        child: const Text('  C L E A R  ')),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22))),
                        onPressed: () {
                          if(myFormKey.currentState!.validate())
                            {
                             int res1 = (english + math + science + islamiat + urdu + ss);
                              double res2 = (res1/600) * 100;
                              String res3;
                              if(res2<=40){
                                res3 = 'F';
                              }
                              else if(res2<=60){
                                res3 = 'C';
                              }
                              else if(res2<=70){
                                res3 = 'B';
                              }
                              else{
                                res3 = 'A';
                              }
                             setState(() {
                               obtainMarks = 'Obtain Marks: $res1';
                               percentage = 'Percentage: $res2';
                               grade = 'Grade: $res3';
                            });



                          };
                        },
                        child: Text(' Calculate ')),
                  ],
                ),
                SizedBox(height: 33,),
                Text(obtainMarks),
                Text(percentage),
                Text(grade),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
