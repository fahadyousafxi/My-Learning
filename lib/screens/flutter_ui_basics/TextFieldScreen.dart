import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({Key? key}) : super(key: key);

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Field'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: 'Enter name              "default  keyboard"',
                    label: Text('Name'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 22,
              ),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText:
                        'Email                   "email  keyboard & no border"',
                    label: Text('Email')),
              ),
              SizedBox(
                height: 22,
              ),
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.number,
                maxLength: 11,
                decoration: InputDecoration(
                    hintText: 'Phone number         "number keyboard',
                    label: Text('Phone'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 22,
              ),
              TextField(
                obscureText: true,
                obscuringCharacter: '#',
                decoration: InputDecoration(
                  hintText: 'Password',
                  label: Text('Password'),
                  suffixIcon: Icon(Icons.visibility),
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {});
                      print(nameController.text +
                          emailController.text +
                          phoneController.text);
                    },
                    child: Text('Show'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                          nameController.clear();
                          emailController.clear();
                          phoneController.clear();
                          setState(() {

                          });
                    },
                    child: Text('clear'),
                  ),
                ],
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                children: [
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('\nName:     ${nameController.text}'),
                      Text('Email:     ${emailController.text}'),
                      Text('Phone:    ${phoneController.text}'),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
