import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/menu_drawer_controller.dart';
import 'package:get/get.dart';

class MenuDrawerPage extends StatelessWidget {
  MenuDrawerPage({super.key});

  final MenuDrawerController controller =
      Get.put(MenuDrawerController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: const Text('Daftar HP Terkini'),
          backgroundColor: const Color.fromARGB(255, 0, 69, 160),
          foregroundColor: Colors.white,
          
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 177, 18, 18),
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Menu Navigasi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  controller.changePage(0);
                  Navigator.pop(context);
                },
              ),

               ListTile(
                leading: const Icon(Icons.history),
                title: const Text('History'),
                onTap: () {
                  controller.changePage(1);
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {
                  controller.changePage(2);
                  Navigator.pop(context);
                },
              ),

             

              
            ],
          ),
        ),

        body: IndexedStack(
          index: controller.selectedIndex.value,
          children: controller.listPages,
        ),

        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: controller.selectedIndex.value,
        //   onTap: controller.changePage,
        //   items: const [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: 'Home',
        //     ),
           
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.history),
        //       label: 'History',
        //     ),

        //      BottomNavigationBarItem(
        //       icon: Icon(Icons.person),
        //       label: 'Profile',
        //     ),
        //   ],
        // ),
      ),
    );
  }
}