// ignore_for_file: file_names
import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {

  late String nama;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    final arguments = Get.arguments;
    nama = arguments['nama'];
  }
}