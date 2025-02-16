class Orang {
  // Properties
  String nama; // ini adalah contoh properties
  int usia; /// ini adalah contoh properties

  // Constructor
  Orang(this.nama, this.usia);
}

void main() {
  Orang orang1 = Orang("Dian", 25);
  print("Nama: ${orang1.nama}, Usia: ${orang1.usia}");
}
