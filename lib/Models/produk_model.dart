class ProdukModel {
  String namaProduk;
  String harga;
  String description;
  String image; 
  String reviews;
  double rating;
  String namaToko;

  ProdukModel(
    {
      required this.namaProduk, required this.harga,required this.description, required this.image, required this.reviews, required this.rating, required this.namaToko
    }
  );
}