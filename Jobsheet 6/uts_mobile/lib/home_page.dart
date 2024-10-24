import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'about_page.dart';

class HomePage extends StatelessWidget {
  final String username;

  HomePage({required this.username});

  final List<Map<String, dynamic>> recipes = [
    {'name': 'Nasi Goreng', 'ingredients': 'Nasi, Bawang, Telur, Kecap', 'steps': 'Goreng nasi dengan bumbu'},
    {'name': 'Sate Ayam', 'ingredients': 'Daging Ayam, Bumbu Kacang', 'steps': 'Panggang ayam dan sajikan dengan bumbu kacang'},
    {'name': 'Rendang', 'ingredients': 'Daging Sapi, Santan, Bumbu', 'steps': 'Rebus daging dengan bumbu hingga empuk'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resep Makanan'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(username: username)));
            },
          ),
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return Card(
            child: ListTile(
              title: Text(recipe['name']),
              subtitle: Text('Bahan: ${recipe['ingredients']}'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(recipe['name']),
                    content: Text('Cara Memasak: ${recipe['steps']}'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('Tutup'),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
