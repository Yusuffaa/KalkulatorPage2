import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class KalkulatorController extends GetxController {
  var hasilHitung = 0.0.obs;


  void tambah(double angka1, double angka2) {
    double hasilTambah = angka1 + angka2;
    hasilHitung.value = hasilTambah;
     Get.snackbar(
      "hasil jumlah",
      // ignore: unnecessary_string_interpolations
      "${hasilTambah.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kurang(double angka1, double angka2) {
    double hasilKurang = angka1 - angka2;
    hasilHitung.value = hasilKurang;
     Get.snackbar(
      "hasil jumlah",
      // ignore: unnecessary_string_interpolations
      "${hasilKurang.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kali(double angka1, double angka2) {
    double hasilKali = angka1 * angka2;
    hasilHitung.value = hasilKali;
     Get.snackbar(
      "hasil jumlah",
      // ignore: unnecessary_string_interpolations
      "${hasilKali.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void bagi(double angka1, double angka2) {
    double hasilBagi = angka1 / angka2;
    hasilHitung.value = hasilBagi;
     Get.snackbar(
      "hasil jumlah",
      // ignore: unnecessary_string_interpolations
      "${hasilBagi.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

}
  
