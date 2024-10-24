import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String username;

  ProfilePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50], // Background warna soft orange
      appBar: AppBar(
        backgroundColor: Colors.orange, // Warna AppBar oranye
        title: Text('Profil Pengguna', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon user yang besar, diganti dengan gambar profil
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.orange[200], // Warna background dari avatar
                backgroundImage: AssetImage('assets/profile_picture.jpg'), // Menambahkan gambar profil
                child: ClipOval( // ClipOval untuk menutupi bagian yang tidak diinginkan
                  child: Image.asset(
                    'assets/poto.jpg', // Ganti dengan path gambar Anda
                    fit: BoxFit.cover,
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Text "Profil" yang menarik
              Text(
                'Profil',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown[800], // Warna cokelat tua
                ),
              ),
              SizedBox(height: 20),

              // Box dekoratif untuk menampilkan username
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.brown.withOpacity(0.3), // Warna bayangan cokelat
                      blurRadius: 8,
                      offset: Offset(0, 4), // Posisi bayangan
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.person_outline, size: 28, color: Colors.orange), // Icon user kecil
                    SizedBox(width: 10),
                    Text(
                      'Username: $username',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.brown[700], // Warna teks cokelat tua
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
