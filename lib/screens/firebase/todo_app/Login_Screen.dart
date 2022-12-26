import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_learning/screens/firebase/todo_app/Signup_Screen.dart';
import 'package:my_learning/screens/firebase/todo_app/Task_List_Screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

var emailController = TextEditingController();
var passwordController = TextEditingController();


class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login to Todo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            SizedBox(height: 20,),

            ElevatedButton(onPressed: (){
              var email = emailController.text.trim();
              var password = passwordController.text.trim();
              if(email.isEmpty || password.isEmpty)
                {
                  Fluttertoast.showToast(msg: 'fill the blank', gravity: ToastGravity.CENTER);
                  return;
                }
              Navigator.push(context, MaterialPageRoute(builder: (context) => TaskList()));
              }, child: Text(' Login ')),

            SizedBox(height: 20,),

            Row( mainAxisSize: MainAxisSize.min,
              children: [
                Text('for new account!! '),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                }, child: Text('Signup '))
              ],
            )

          ],
        ),
      ),
    );
  }
}
