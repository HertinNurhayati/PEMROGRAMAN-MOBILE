import 'package:flutter/material.dart';
import 'package:js6_praktikum5_belanja/pages/home_page.dart';
import 'package:js6_praktikum5_belanja/pages/item_page.dart';
import 'package:js6_praktikum5_belanja/models/item.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    onGenerateRoute: (settings) {
      if (settings.name == '/item') {
        final item = settings.arguments as Item; // Ambil argumen item
        return MaterialPageRoute(
          builder: (context) => ItemPage(item: item), // Kirim item ke ItemPage
        );
      }
      return null;
    },
    routes: {
      '/': (context) => HomePage(),
    },
  ));
}