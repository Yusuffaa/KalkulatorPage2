
// import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/data_model.dart';
// import 'package:flutter_application_1/Models/pertandingan_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PertandinganController extends GetxController {

  var isLoading = false.obs;

  var pertandinganModel = <PertandinganModel>[].obs;

  Future<void> getPertandingan() async {

    try {

      isLoading.value = true;

      final url = Uri.parse(
        "https://api.openligadb.de/getavailableleagues",
      );

      final response = await http.get(url);

      isLoading.value = false;

      if (response.statusCode == 200) {

        pertandinganModel.value =
            pertandinganModelFromJson(response.body);

        Get.snackbar(
          "Berhasil",
          "Data pertandingan berhasil diambil",
        );

      } else {

        Get.snackbar(
          "Gagal",
          "Masalah jaringan, coba lagi nanti",
        );

      }

    } catch (e) {

      Get.snackbar(
        "Error",
        "Ada kesalahan: $e",
      );

    } finally {

      isLoading.value = false;

    }
  }
}
