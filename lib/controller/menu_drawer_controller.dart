import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu/history.dart';
import 'package:flutter_application_1/menu/home.dart';
import 'package:flutter_application_1/menu/profile.dart';
import 'package:get/get.dart';

class MenuDrawerController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final List<Widget> listPages = [
    HomePage(),
    HistoryPage(),
    ProfilePage(),
    
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}