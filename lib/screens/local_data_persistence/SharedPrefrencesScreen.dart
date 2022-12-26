import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrences extends StatefulWidget {
  const SharedPrefrences({Key? key}) : super(key: key);

  @override
  State<SharedPrefrences> createState() => _SharedPrefrencesState();
}

class _SharedPrefrencesState extends State<SharedPrefrences> {
  bool chickStatus = true;
  bool botten = false;
  var nameController = TextEditingController();
  Color sColor = Colors.white;
  Color hColor = Colors.black;
  var name = "";


  @override
  void initState() {
    getStoredName();
    getStoredBulb();
    super.initState();

  }

  Future getStoredBulb() async {
    SharedPreferences mySP = await SharedPreferences.getInstance();
    bool? status = mySP.getBool('BULB');

    if(status != null) {
      if (status == true) {
        setState(() {
          botten ? sColor = Colors.white : sColor = Colors.black;
          botten ? hColor = Colors.black : hColor = Colors.white;
          botten = true;
        });
      } else {
        setState(() {
          
          botten = false;
        });
      }
    }
  }


  Future getStoredName() async {
    SharedPreferences mySP = await SharedPreferences.getInstance();
    String? name = mySP.getString('NAME');
    if(name != null){
      setState(() {
        this.name = name;
      });
    }else{
      setState(() {
        this.name = 'Not Saved Yet';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sColor,
      //botten == false ? return backgroundColor: Colors.black : return backgroundColor: Colors.white,

      appBar: AppBar(
        title: Text('Switch Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 30,
              ),
              chickStatus
                  ? Center(
                      child: Text('Status:   Online',
                          style: TextStyle(color: Colors.green)))
                  : Center(
                      child: Text('Status:   Offline',
                          style: TextStyle(color: Colors.green))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Switch Status',
                    style: TextStyle(color: hColor),
                  ),
                  Switch(
                      value: chickStatus,
                      onChanged: (bool isCheck) {
                        setState(() {
                          chickStatus = isCheck;
                        });
                      })
                ],
              ),
              SizedBox(
                height: 100,
              ),
              botten
                  ? Center(
                      child: Text(
                      'Dark Mood On\n',
                      style: TextStyle(color: Colors.white),
                    ))
                  : Center(child: Text('Dark Mood Off\n')),
              botten
                  ? ClipRRect(borderRadius: BorderRadius.circular(22), child: Image.asset('assets/images/on.png'))
                  : ClipRRect(borderRadius: BorderRadius.circular(22), child: Image.asset('assets/images/off.png')),
              Switch(
                  value: botten,
                  onChanged: (bool isCheck) async {
                    SharedPreferences mySP = await SharedPreferences.getInstance();
                    mySP.setBool('BULB', isCheck);

                    setState(() {

                      botten ? sColor = Colors.white : sColor = Colors.black;
                      botten ? hColor = Colors.black : hColor = Colors.white;
                      botten = isCheck;

                    });
                  }),
              const Divider(
                height: 88,
                thickness: 5,
                color: Colors.blue,
              ),
              TextField(
                style: TextStyle(color: hColor),
                controller: nameController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyan),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  // focusedBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.cyan),
                  // ),
                  fillColor: Colors.white12,
                  filled: true,
                  hintText: 'Enter Name to Save',

                  hintStyle: TextStyle(color: hColor),
                  label: const Text('Name'),
                  labelStyle: new TextStyle(color: hColor),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 2.0),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Text('Your Saved Name:   $name',
                      style: TextStyle(color: Colors.green))),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () async{
                SharedPreferences mySP = await SharedPreferences.getInstance();
                String n = nameController.text.trim();
                mySP.setString("NAME", n);

                getStoredName();

              }, child: Text('Save')),
            ],
          ),
        ),
      ),
    );
  }
}
