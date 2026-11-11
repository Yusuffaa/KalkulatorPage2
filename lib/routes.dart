import 'package:flutter_application_1/pages/detail_product_page.dart';
import 'package:flutter_application_1/pages/list_product_page.dart';
import 'package:flutter_application_1/pages/confirmregistration_page.dart';
import 'package:flutter_application_1/pages/login_clone_fix.dart';
import 'package:flutter_application_1/pages/main_menu_page.dart';
import 'package:flutter_application_1/pages/menu_drawer_page.dart';
import 'package:flutter_application_1/pages/registration_page.dart';
import 'package:flutter_application_1/pages/dataAPISepakBola_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = '/registration';
  static const String confirmRegistration = '/confirmregistration';
  static const String listProduk = '/listproduk';
  static const String detailProduk = '/detailproduk';
  static const String mainMenuPage = '/mainMenuPage';
  static const String menuDrawerPage = '/menuDrawerPage';
  static const String loginCloneFixPage = '/loginCloneFixPage';
  static const String dataAPISepakBolaPage = '/dataAPISepakBolaPage';

  static final myPages =[
    GetPage(name: registration, page: ()=> RegistrationPage()),
    GetPage(name: confirmRegistration, page: ()=> ConfirmregistrationPage()),
    GetPage(name: listProduk, page: ()=> ListProdukPage()),
    GetPage(name: detailProduk, page: ()=> DetailProductPage()),
    GetPage(name: mainMenuPage, page: ()=> MainMenuPage()),
    GetPage(name: menuDrawerPage, page: ()=> MenuDrawerPage()),
    GetPage(name: loginCloneFixPage, page: ()=> LoginCloneFixPage()),
    GetPage(name: dataAPISepakBolaPage, page: ()=> ListPertandinganPage()),

  ];
}