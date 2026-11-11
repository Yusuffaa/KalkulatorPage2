import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/login_controller.dart';
import 'package:get/get.dart';

// class LoginCloneFix extends StatelessWidget {

//   const LoginCloneFix({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

class LoginCloneFixPage extends StatelessWidget {
  LoginCloneFixPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    // final usernameController = TextEditingController();
    // final passwordController = TextEditingController();

    // void login() {
    //   if (usernameController.text.isEmpty ||
    //       passwordController.text.isEmpty) {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       const SnackBar(
    //         content: Text('Username dan password harus diisi!'),
    //       ),
    //     );
    //   } else {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       SnackBar(
    //         content: Text(
    //           'Selamat datang ${usernameController.text}',
    //         ),
    //       ),
    //     );
    //   }
    // }

    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Instagram',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),

                const SizedBox(height: 40),

                TextField(
                  controller: controller.txtUsername,
                  decoration: InputDecoration(hintText: 'Input Username'),
                ),

                const SizedBox(height: 10),

                TextField(
                  controller: controller.txtPassword,
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'Input Password'),
                ),

                Obx(
                  () => controller.isLoading.value
                      ? Center(child: CircularProgressIndicator())
                      : OutlinedButton(
                          onPressed: () {
                            controller.login();
                          },
                          child: Text("Login"),
                        ),
                ),

                // const SizedBox(height: 15),

                // SizedBox(
                //   width: double.infinity,
                //   height: 48,
                //   child: ElevatedButton(
                //     onPressed: login,
                //     style: ElevatedButton.styleFrom(
                //       backgroundColor: Colors.blue,
                //       foregroundColor: Colors.white,
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(8),
                //       ),
                //     ),
                //     child: const Text(
                //       'Log In',
                //       style: TextStyle(
                //         fontSize: 16,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //   ),
                // ),

                // const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
