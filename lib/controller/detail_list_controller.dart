// import 'package:flutter_application_1/Models/produk_model.dart';
import 'package:get/get.dart';


class DetailListController extends GetxController {

  late String namaProduk;
  late String harga;
  late String description;
  late String image;
  late String reviews;
  late String rating;
  late String namaToko;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    final arguments = Get.arguments;
    namaProduk = arguments['namaProduk'];
    harga = arguments['harga'];
    description = arguments['description'];
    image = arguments['image'];
    reviews = arguments['reviews'];
    rating = arguments['rating'];
    namaToko = arguments['namaToko'];
  }
}
