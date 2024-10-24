import 'dart:io';

// Konversi nilai huruf ke angka
int nilaiHurufKeAngka(String nilaiHuruf) {
  switch (nilaiHuruf.toUpperCase()) {
    case 'A':
      return 4;
    case 'B':
      return 3;
    case 'C':
      return 2;
    case 'D':
      return 1;
    case 'E':
      return 0;
    default:
      return -1; // Mengindikasikan nilai huruf yang tidak valid
  }
}

// Fungsi untuk menghitung Nilai Rata-rata Semester (NR)
double hitungNR(double totalNilai, double totalSKS) {
  return totalSKS > 0 ? totalNilai / totalSKS : 0.0;
}

// Fungsi untuk menampilkan transkrip nilai
void tampilkanTranskrip(int semester, List<Map<String, dynamic>> mataKuliah) {
  print('Hasil Semester $semester:');
  print('Mata Kuliah SKS Nilai');
  num totalSKS = 0;
  num totalNilai = 0;

  for (var matkul in mataKuliah) {
    print('${matkul["nama"]} ${matkul["sks"]} ${matkul["nilai"]}');
    totalSKS += matkul["sks"];
    totalNilai += matkul["sks"] * matkul["nilaiAngka"];
  }

  double nr = hitungNR(totalNilai.toDouble(), totalSKS.toDouble());
  print('SKS : $totalSKS');
  print('NR : ${nr.toStringAsFixed(2)}');
  print('--------------------------------------------');
}

void main() {
  print('==============================================');
  print(' Program Menghitung IPK Mahasiswa');
  print('==============================================');

  // Input jumlah semester
  int jumlahSemester;
  do {
    stdout.write('Masukkan jumlah semester (2-14): ');
    jumlahSemester = int.parse(stdin.readLineSync()!);
    if (jumlahSemester < 2 || jumlahSemester > 14) {
      print('Jumlah semester tidak valid. Harus antara 2 hingga 14.');
    }
  } while (jumlahSemester < 2 || jumlahSemester > 14);

  List<List<Map<String, dynamic>>> transkrip = [];
  num totalSKS = 0;
  num totalNilai = 0;

  for (int semester = 1; semester <= jumlahSemester; semester++) {
    print('Masukkan jumlah mata kuliah semester $semester:');
    int jumlahMataKuliah;
    do {
      stdout.write('Jumlah mata kuliah (minimal 2): ');
      jumlahMataKuliah = int.parse(stdin.readLineSync()!);
      if (jumlahMataKuliah < 2) {
        print('Jumlah mata kuliah tidak valid. Harus minimal 2.');
      }
    } while (jumlahMataKuliah < 2);

    List<Map<String, dynamic>> mataKuliah = [];

    for (int i = 0; i < jumlahMataKuliah; i++) {
      print('Masukkan mata kuliah ke ${i + 1}');
      stdout.write('Masukkan nama matkul: ');
      String namaMatkul = stdin.readLineSync()!;
      
      int sks;
      do {
        stdout.write('Masukkan jumlah sks matkul: ');
        sks = int.parse(stdin.readLineSync()!);
        if (sks <= 0 || sks > 24) {
          print('Jumlah SKS tidak valid. Maksimal 24 SKS.');
        }
      } while (sks <= 0 || sks > 24);

      String nilaiHuruf;
      int nilaiAngka;
      do {
        stdout.write('Masukkan nilai matkul (A/B/C/D/E): ');
        nilaiHuruf = stdin.readLineSync()!;
        nilaiAngka = nilaiHurufKeAngka(nilaiHuruf);
        if (nilaiAngka == -1) {
          print('Nilai huruf tidak valid. Harus A/B/C/D/E.');
        }
      } while (nilaiAngka == -1);

      mataKuliah.add({
        'nama': namaMatkul,
        'sks': sks,
        'nilai': nilaiHuruf,
        'nilaiAngka': nilaiAngka,
      });
    }

    transkrip.add(mataKuliah);
    num sksSemester = mataKuliah.fold(0, (sum, matkul) => sum + matkul['sks']);
    num totalNilaiSemester = mataKuliah.fold(0, (sum, matkul) => sum + (matkul['sks'] * matkul['nilaiAngka']));
    totalSKS += sksSemester;
    totalNilai += totalNilaiSemester;

    tampilkanTranskrip(semester, mataKuliah);
  }

  double ipk = hitungNR(totalNilai.toDouble(), totalSKS.toDouble());

  print('==============================================');
  print(' Transkrip Nilai');
  print('==============================================');
  print('Total SKS : $totalSKS');
  print('IPK : ${ipk.toStringAsFixed(2)}');
  print('==============================================');
}
