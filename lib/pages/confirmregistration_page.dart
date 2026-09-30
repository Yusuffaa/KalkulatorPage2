import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/confirmRegistration_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class ConfirmregistrationPage extends StatelessWidget {
  const ConfirmregistrationPage({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put  (ConfirmRegistrationController());
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Registration"),
      ),
      body: Column(
        children: [
          Text(
            "Nama: " + controller.nama.toString(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),           
            ),

            ElevatedButton(onPressed: (){
              Get.back();
            },
              child: Text("oke"),
             )
        ],
      ),
    );
  }
}