import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController txtNama = TextEditingController();


    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
      ),
      body:Column(
        children: [
          TextField(
            controller: txtNama,
            decoration: InputDecoration(
              hintText: "Input Nama",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed(Routes.confirmRegistration, arguments:{
                "nama": txtNama.text.toString(),
                
                
              });
            },
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }
}