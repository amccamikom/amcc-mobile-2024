// Class induk
class Kendaraan {
  String merk;

  Kendaraan(this.merk);

  void jalan() {
    print("$merk sedang berjalan...");
  }
}

// Class anak yang mewarisi Kendaraan
class Motor extends Kendaraan { // dengan kata kunci extends akan mewarisi class Kendaraan
  int cc;

  Motor(super.merk, this.cc);//mengambil nilai dari constructor class Kendaraan

  void infoMotor() {
    print("Motor $merk dengan mesin $cc cc.");
  }
}

void main() {
  Motor motor1 = Motor("Honda", 150);
  motor1.jalan();
  motor1.infoMotor();
}
