void main() {
  // Nama dan NIM
  String nama = "Hertin Nurhayati";
  String nim = "2241760025";
  
  // Fungsi untuk memeriksa apakah sebuah bilangan adalah bilangan prima
  bool isPrime(int number) {
    if (number <= 1) return false;
    if (number == 2) return true;
    if (number % 2 == 0) return false;
    
    for (int i = 3; i <= (number / 2).toInt(); i += 2) {
      if (number % i == 0) return false;
    }
    
    return true;
  }
  
  // Menampilkan bilangan prima dari 0 hingga 201
  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print("Bilangan prima: $i");
      print("Nama: $nama");
      print("NIM: $nim");
      print(""); // Baris kosong untuk pemisah
    }
  }
}
