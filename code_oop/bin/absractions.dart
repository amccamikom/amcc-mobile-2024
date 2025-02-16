// Abstract class
abstract class Hewan {
  String nama;

  Hewan(this.nama);

  void bersuara(); // Method abstrak (harus diimplementasikan)
}

// Class konkret yang mengimplementasikan Hewan
class Kucing extends Hewan {
  Kucing(String nama) : super(nama);

  @override
  void bersuara() {
    print("$nama: Meong!");
  }
}

void main() {
  Kucing kucing1 = Kucing("Kitty");
  kucing1.bersuara(); // Output: Kitty: Meong!
}
