void main() {
  // Bagian kode pertama
  String test = "test2";
  
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") {
    print("Test2 again");
  }

  // Bagian kode kedua
  String test2 = "true"; // Menggunakan test2 agar tidak bentrok dengan variabel test sebelumnya
  if (test2 == "true") { // Ubah perbandingan menjadi string
    print("Kebenaran");
  }
}
