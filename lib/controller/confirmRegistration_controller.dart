// ignore_for_file: file_names
import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {

  late String nama;
  late String alamat;
  late String kelas;
  late String jenisKelamin;
  late String noWa;
  late String email;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    final arguments = Get.arguments;
    nama = arguments['nama'];
    alamat = arguments['alamat'];
    kelas = arguments['kelas'];
    jenisKelamin = arguments['jenisKelamin'];
    noWa = arguments['nowa'];
    email = arguments['email'];
  }
}