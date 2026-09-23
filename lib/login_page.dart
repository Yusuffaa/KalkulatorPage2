import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


TextEditingController txtUsername = TextEditingController();
TextEditingController txtPassword = TextEditingController();
String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Login Page')),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: MyTextfield(
              myHint: "Input Username",
              txtController: txtUsername,
              radius: 10,
              keyboardType: TextInputType.text,
              inputFormatters: [],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: MyTextfield(
              myHint: "Input Password",
              txtController: txtPassword,
              radius: 10,
              keyboardType: TextInputType.text,
              inputFormatters: [],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                setState(() {
                String username = txtUsername.text;
                String password = txtPassword.text;
                if(username == "admin" && password == "admin") {
                  statusLogin = "Login Berhasil";
                } else {
                  statusLogin = "Login Gagal";                  
                }
                });
                
              }, child: Text("Login",style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 5, 115, 240), fontWeight: FontWeight.bold,),)),
              ElevatedButton(onPressed: () {}, child: Text("Register",style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 5, 238, 110), fontWeight: FontWeight.bold),)),
            ],
          ), 
                
        ]
      ),
    );
  }
}