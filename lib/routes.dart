import 'package:flutter_application_1/pages/confirmregistration_page.dart';
import 'package:flutter_application_1/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = '/registration';
  static const String confirmRegistration = '/confirmregistration';
  

  static final myPages =[
    GetPage(name: registration, page: ()=> RegistrationPage()),
    GetPage(name: confirmRegistration, page: ()=> ConfirmregistrationPage()),
  ];
}