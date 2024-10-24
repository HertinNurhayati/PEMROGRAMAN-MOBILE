import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Aplikasi ini menyediakan berbagai resep makanan '
          'tradisional Indonesia yang bisa Anda coba di rumah. '
          'Selamat memasak!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
