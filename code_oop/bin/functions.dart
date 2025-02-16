double hitungluas(double panjang, double lebar) {
  return panjang * lebar; // Mengembalikan nilai luas persegi panjang
}

void main() {
  double panjang = 10; // Inisialisasi variabel panjang
  double lebar = 5; // Inisialisasi variabel lebar
  double luas = hitungluas(panjang, lebar); // Memanggil fungsi hitungluas dan menyimpan hasilnya ke variabel luas
  print('Luas Persegi Panjang: $luas'); // Menampilkan hasil perhitungan luas
}