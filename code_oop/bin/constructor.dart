class Laptop {
  String merk;
  int ram;

  // Constructor utama
  Laptop(this.merk, this.ram);

  // Named constructor untuk laptop dengan RAM default
  Laptop.denganRamDefault(this.merk) : ram = 8;

  // Named constructor tanpa parameter (default value)
  Laptop.tanpaSpesifikasi() 
      : merk = "Tidak Diketahui", 
        ram = 4;

  void tampilkanInfo() {
    print("Laptop $merk dengan RAM $ram GB");
  }
}

void main() {
  Laptop laptop1 = Laptop("Asus", 16);
  Laptop laptop2 = Laptop.denganRamDefault("HP");
  Laptop laptop3 = Laptop.tanpaSpesifikasi();

  laptop1.tampilkanInfo(); // Output: Laptop Asus dengan RAM 16 GB
  laptop2.tampilkanInfo(); // Output: Laptop HP dengan RAM 8 GB
  laptop3.tampilkanInfo(); // Output: Laptop Tidak Diketahui dengan RAM 4 GB
}
