import 'package:flutter/material.dart';
import 'package:js6_praktikum5_belanja/models/item.dart';
import 'package:js6_praktikum5_belanja/pages/item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      imageUrl: 'assets/images/gula.jpeg',
      stock: 10,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      imageUrl: 'assets/images/garam.jpeg',
      stock: 20,
      rating: 4.2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah kolom
          crossAxisSpacing: 8, // Jarak antar kolom
          mainAxisSpacing: 8,  // Jarak antar baris
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/item',
                arguments: item, // Kirim data item sebagai argument
              );
            },
            child: Hero(
              tag: item.name, // Tag untuk Hero Animation
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      item.imageUrl, // Pastikan path image benar
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8),
                    Text(item.name),
                    Text('Price: Rp${item.price}'),
                    Text('Stock: ${item.stock}'),
                    Text('Rating: ${item.rating}'),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(8),
        color: Colors.grey[200],
        child: Text('Hertin Nurhayati | NIM 2241760025'),
      ),
    );
  }
}
