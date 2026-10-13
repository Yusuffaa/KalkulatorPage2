import 'package:flutter_application_1/Models/produk_model.dart';
import 'package:get/get.dart';


class DetailListMakananController extends GetxController {
  late ProdukModel makanan;

  @override
  void onInit() {
    super.onInit();
    makanan = Get.arguments as ProdukModel;
  }
}