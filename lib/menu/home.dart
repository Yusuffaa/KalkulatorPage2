
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/list_product_controller.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => ListView(
          children: [
            // PRODUK PILIHAN - SCROLL HORIZONTAL
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Text(
                "Produk Pilihan",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF263238),
                ),
              ),
            ),

            SizedBox(
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                itemCount: controller.listProduk.length,
                itemBuilder: (context, index) {
                  final produk = controller.listProduk[index];

                  final displayHarga =
                      produk.harga.toString().startsWith("Rp")
                          ? produk.harga.toString()
                          : "Rp ${produk.harga}";

                  return Container(
                    width: 170,
                    margin: const EdgeInsets.only(
                      right: 12,
                      bottom: 4,
                    ),
                    child: Card(
                      color: Colors.white,
                      elevation: 4,
                      shadowColor: Colors.black12,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(
                            Routes.detailProduk,
                            arguments: {
                              'namaProduk': produk.namaProduk.toString(),
                              'harga': produk.harga.toString(),
                              'description': produk.description.toString(),
                              'image': produk.image.toString(),
                              'reviews': produk.reviews.toString(),
                              'rating': produk.rating.toString(),
                              'namaToko': produk.namaToko.toString(),
                            },
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              width: double.infinity,
                              color: Colors.grey[200],
                              child: Image.asset(
                                produk.image,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) =>
                                    const Icon(
                                  Icons.broken_image,
                                  color: Colors.grey,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    produk.namaProduk,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF263238),
                                    ),
                                  ),

                                  const SizedBox(height: 4),

                                  Text(
                                    displayHarga,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF3949AB),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),

                                  const SizedBox(height: 4),

                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star_rounded,
                                        size: 16,
                                        color: Colors.amber,
                                      ),
                                      const SizedBox(width: 4),
                                      Expanded(
                                        child: Text(
                                          "${produk.rating} (${produk.reviews})",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF263238),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // SEMUA PRODUK - SCROLL VERTIKAL
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 20, 16, 8),
              child: Text(
                "Semua Produk",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF263238),
                ),
              ),
            ),

            ...List.generate(
              controller.listProduk.length,
              (index) {
                final produk = controller.listProduk[index];

                return Dismissible(
                  key: ValueKey(produk.namaProduk),
                  direction: DismissDirection.startToEnd,

                  background: Container(
                    margin: const EdgeInsets.fromLTRB(12, 0, 12, 16),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 20),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),

                  onDismissed: (direction) {
                    controller.listProduk.removeAt(index);

                    Get.snackbar(
                      "Produk Dihapus",
                      "Produk berhasil dihapus",
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.red,
                      colorText: Colors.white,
                      margin: const EdgeInsets.all(12),
                    );
                  },

                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () {
                      Get.toNamed(
                        Routes.detailProduk,
                        arguments: {
                          'namaProduk': produk.namaProduk.toString(),
                          'harga': produk.harga.toString(),
                          'description': produk.description.toString(),
                          'image': produk.image.toString(),
                          'reviews': produk.reviews.toString(),
                          'rating': produk.rating.toString(),
                          'namaToko': produk.namaToko.toString(),
                        },
                      );
                    },

                    child: Card(
                      margin: const EdgeInsets.fromLTRB(12, 0, 12, 16),
                      elevation: 4,
                      shadowColor: Colors.black12,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                produk.image,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) =>
                                    const SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Icon(
                                    Icons.broken_image,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(width: 16),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    produk.namaProduk,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF263238),
                                    ),
                                  ),

                                  const SizedBox(height: 8),

                                  Text(
                                    produk.harga,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF3949AB),
                                    ),
                                  ),

                                  const SizedBox(height: 8),

                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.touch_app,
                                        size: 16,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        "Lihat detail produk",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(width: 8),

                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(
                                  255, 255, 255, 255,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Color(0xFF3949AB),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
