import 'package:flutter_application_1/pages/detail_product_page.dart';
import 'package:flutter_application_1/pages/list_product_page.dart';
import 'package:flutter_application_1/pages/confirmregistration_page.dart';
import 'package:flutter_application_1/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = '/registration';
  static const String confirmRegistration = '/confirmregistration';
  static const String listProduk = '/listproduk';
  static const String detailProduk = '/detailproduk';

  static final myPages =[
    GetPage(name: registration, page: ()=> RegistrationPage()),
    GetPage(name: confirmRegistration, page: ()=> ConfirmregistrationPage()),
    GetPage(name: listProduk, page: ()=> ListProdukPage()),
    GetPage(name: detailProduk, page: ()=> DetailProductPage(produk: Get.arguments)),
  ];
}