
import 'package:flutter_application_1/Models/produk_model.dart';
import 'package:get/get.dart';

class ListProductController extends GetxController {


  RxList<ProdukModel> listProduk = [
    ProdukModel(
      namaProduk: "Samsung Galaxy Fold",
      harga: "10 juta",
      description: "Smartphone lipat Samsung dengan layar yang luas dan performa tinggi.",
      image: "assets/Image/samsungfold.jpg",
      reviews: "125 Reviews",
      rating: "4.5",
      namaToko: "Samsung Official Store",
    ),

    ProdukModel(
      namaProduk: "Samsung Galaxy Z Flip",
      harga: "8 juta",
      description: "Smartphone lipat dengan desain compact dan modern.",
      image: "assets/Image/zflip.jpg",
      reviews: "98 Reviews",
      rating: "4.7",
      namaToko: "Samsung Official Store",
    ),

    ProdukModel(
      namaProduk: "Iphone 15 Pro Max",
      harga: "15 juta",
      description: "iPhone dengan performa tinggi, kamera berkualitas, dan desain premium.",
      image: "assets/Image/ip15promax.jpg",
      reviews: "250 Reviews",
      rating: "4.9",
      namaToko: "Apple Official Store",
    ),

    ProdukModel(
      namaProduk: "PS 5",
      harga: "8 juta",
      description: "Konsol game generasi terbaru dengan performa grafis yang sangat baik.",
      image: "assets/Image/ps5.jpg",
      reviews: "180 Reviews",
      rating: "4.8",
      namaToko: "PlayStation Official Store",
    ),

    ProdukModel(
      namaProduk: "Xbox Series X",
      harga: "12 juta",
      description: "Konsol gaming dengan performa tinggi dan penyimpanan besar.",
      image: "assets/Image/xbox.jpg",
      reviews: "150 Reviews",
      rating: "4.7",
      namaToko: "Xbox Official Store",
    ),
  ].obs;
}
