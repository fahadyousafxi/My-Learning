import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_learning/screens/firebase/todo_app/Login_Screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

var nameController = TextEditingController();
var emailController = TextEditingController();
var passwordController = TextEditingController();
var confirmPasswordController = TextEditingController();

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup to Todo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                label: Text('Name'),
                hintText: 'Name',
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                label: Text('Email'),
                hintText: 'Email',
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                label: Text('Password'),
                hintText: 'Password',
              ),
            ),
            SizedBox(height: 20,),
            TextField(

              controller: confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                label: Text('Confirm Password'),
                hintText: 'Confirm Password',
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () async {
              var name = nameController.text.trim();
              var email = emailController.text.trim();
              var password = passwordController.text.trim();
              var confirmPassword = confirmPasswordController.text.trim();
              if(name.isEmpty || email.isEmpty || password.isEmpty || confirmPassword.isEmpty)
                {
                  Fluttertoast.showToast(msg: 'fill the blank', gravity: ToastGravity.CENTER);
                  return;
                }
              if(password.length < 6)
                {
                  Fluttertoast.showToast(msg: 'Password must be grater than 6 corrector', gravity: ToastGravity.CENTER);
                  return;
                }
              if(password != confirmPassword)
                {
                  Fluttertoast.showToast(msg: "Passwords didn't match ", gravity: ToastGravity.CENTER);
                  return;
                }
              FirebaseAuth auth = FirebaseAuth.instance;
              UserCredential userCredential = await auth.createUserWithEmailAndPassword(email: email, password: password);

              if(userCredential.user != null)
                {
                  Fluttertoast.showToast(msg: 'Done');

                }
              else{
                Fluttertoast.showToast(msg: "Fail");
              }
              Navigator.pop(context, MaterialPageRoute(builder: (Context) => LoginScreen()));
              }, child: Text(' Signup '))
          ],
        ),
      ),
    );
  }
}
