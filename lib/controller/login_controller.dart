import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/login_model.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {

  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;

  var loginModel = Rxn<LoginModel>();

  Future<void> login() async {
    if (txtUsername.text.toString().isEmpty ||
        txtPassword.text.toString().isEmpty) {
      Get.snackbar(
        "error",
        "username atau password tidak boleh kosong",
      );
    } else {

      try {

        isLoading.value = true;

        final url = Uri.parse(
          "https://mediadwi.com/api/latihan/login",
        );

        final response = await http.post(url, body: {
          "username": txtUsername.text.toString(),
          "password": txtPassword.text.toString(),
        });

        isLoading.value = false;

        if (response.statusCode == 200) {

          loginModel.value = loginModelFromJson(response.body);

          if (loginModel.value?.status == true) {
            Get.snackbar(
              "berhasil",
              loginModel.value!.message.toString(),
            );

            Get.offNamed(Routes.dataAPISepakBolaPage);

          } else {
            Get.snackbar(
              "Gagal",
              loginModel.value!.message.toString(),
            );
          }

        } else {
          Get.snackbar(
            "Gagal",
            "Masalah jaringan, coba lagi nanti",
          );
        }

      } catch (e) {
        Get.snackbar("Error", "Ada kesalahan: $e");
      }
    }
  }
}