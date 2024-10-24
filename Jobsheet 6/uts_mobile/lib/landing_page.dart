import 'package:flutter/material.dart';
import 'login_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selamat Datang di Aplikasi Resep Makanan'),
        backgroundColor: Color(0xFF2E7D32), // Hijau tua
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'), // Gambar latar belakang
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo aplikasi
              Image.asset(
                'assets/logo.jpg', // Ganti dengan logo Anda
                width: 150,
                height: 150,
              ),
              SizedBox(height: 20),
              Text(
                'Selamat Datang di Aplikasi Resep Makanan!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Mengubah warna teks menjadi putih
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Temukan berbagai resep masakan nusantara',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70, // Abu-abu muda untuk subjudul
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text('Masuk ke Login'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2E7D32), // Menggunakan 'backgroundColor'
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
