import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/list_product_controller.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';
// import 'package:flutter_application_1/pages/detail_product_page.dart';
import 'package:get/get_core/src/get_main.dart'; 
import 'package:get/get_instance/src/extension_instance.dart';
// import 'package:get/get_navigation/src/extension_navigation.dart';

class ListProdukPage extends StatelessWidget {
   ListProdukPage({super.key, this.produk});

  final controller = Get.put(ListProductController());
  // ignore: strict_top_level_inference, prefer_typing_uninitialized_variables
  final produk;

  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(
        title: Text("My Product"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listProduk.length,
          itemBuilder: (context,index){
            final produk= controller.listProduk[index];
          return InkWell(
            onTap: () {
              Get.toNamed(Routes.detailProduk, arguments: produk);
                          },
            child: ListTile (
              leading: Image.asset(produk.image),
              title: Text(produk.namaProduk), 
              subtitle: Text(produk.harga),
              trailing:Icon(Icons.arrow_forward)
              
              ),
          );
        }),
      ),
    );
  }
}