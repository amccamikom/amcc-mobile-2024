// Class Mahasiswa
class Mahasiswa {
  String nama = "";
  int umur = 0;
}

void main() {
  // Membuat dua object dari class Mahasiswa
  Mahasiswa mhs1 = Mahasiswa();
  mhs1.nama = "Budi";
  mhs1.umur = 20;

  Mahasiswa mhs2 = Mahasiswa();
  mhs2.nama = "Ani";
  mhs2.umur = 22;

  print("${mhs1.nama}, Umur: ${mhs1.umur}");
  print("${mhs2.nama}, Umur: ${mhs2.umur}");
}
