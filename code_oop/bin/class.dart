// Class Mobil sebagai template
class Mobil {
  String merk = "";
  int kecepatanMaksimal = 0;
}

void main() {
  // Membuat object dari class Mobil
  Mobil mobil1 = Mobil();
  mobil1.merk = "Toyota";
  mobil1.kecepatanMaksimal = 180;

  print("Mobil: ${mobil1.merk}, Kecepatan Maksimal: ${mobil1.kecepatanMaksimal} km/jam");
}
