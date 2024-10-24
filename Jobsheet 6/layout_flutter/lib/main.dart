import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Implementasi title row
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32), // Padding di sepanjang setiap tepi sebesar 32 piksel
      child: Row(
        children: [
          Expanded(
            /* soal 1 */
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Mengatur posisi kolom berada di awal baris
              children: [
                /* soal 2 */
                Container(
                  padding: const EdgeInsets.only(bottom: 8), // Padding bawah sebesar 8
                  child: const Text(
                    'Wisata Gunung di Jawa Timur',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, // Teks tebal
                    ),
                  ),
                ),
                Text(
                  'Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500], // Warna teks menjadi abu-abu
                  ),
                ),
              ],
            ),
          ),
          /* soal 3 */
          Icon(
            Icons.star, // Menggunakan ikon bintang
            color: Colors.red[500], // Mengatur warna ikon menjadi merah
          ),
          const Text('41'), // Menampilkan teks "41"
        ],
      ),
    );

    // Langkah 1: Method _buildButtonColumn
    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8), // Margin atas 8 piksel
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    // Langkah 2: Buat widget buttonSection
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Mengatur ruang kosong secara merata
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'), // Tombol "CALL"
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'), // Tombol "ROUTE"
        _buildButtonColumn(color, Icons.share, 'SHARE'), // Tombol "SHARE"
      ],
    );

        // Langkah 1 Praktikum 3: Buat widget textSection
    Widget textSection = Container(
      padding: const EdgeInsets.all(32), // Padding di sepanjang setiap tepi sebesar 32 piksel
      child: const Text(
        'Carilah teks di internet yang sesuai '
        'dengan foto atau tempat wisata yang ingin '
        'Anda tampilkan. '
        'Tambahkan nama dan NIM Anda sebagai '
        'identitas hasil pekerjaan Anda. '
        'Selamat mengerjakan 🙂.',
        softWrap: true, // Mengatur teks agar bisa membungkus jika terlalu panjang
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Hertin Nurhayati dan 2241760025',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/bromo.jpeg',
              width: 600,
              height: 240,
            ),
            titleSection, // Menambahkan titleSection ke dalam Column
            buttonSection, // Menambahkan buttonSection ke dalam Column
            textSection,
          ],
        ),
      ),
    );
  }
}
