class Item {
  String name;  // Nama item
  double price; // Harga item
  String imageUrl; // URL gambar produk
  int stock; // Stok barang
  double rating; // Rating produk
  
    Item({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.stock,
    required this.rating,
  });
}