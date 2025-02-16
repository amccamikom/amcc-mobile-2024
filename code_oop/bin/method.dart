class Hewan {
  String nama;

  // Constructor
  Hewan(this.nama);

  // Method
  void suara() {
    print("$nama mengeluarkan suara...");
  }
}

void main() {
  Hewan kucing = Hewan("Kucing");
  kucing.suara(); // Output: Kucing mengeluarkan suara...
}
// Output: Kucing mengeluarkan suara...