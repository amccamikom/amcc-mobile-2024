class Hewan {
  void bersuara() {
    print("Hewan bersuara...");
  }
}

class Burung extends Hewan {
  @override
  void bersuara() {
    print("Burung berkicau...");
  }
}

class Ayam extends Hewan {
  @override
  void bersuara() {
    print("Ayam berkokok...");
  }
}

void main() {
  Hewan burung = Burung();
  Hewan ayam = Ayam();

  burung.bersuara(); // Output: Burung berkicau...
  ayam.bersuara(); // Output: Ayam berkokok...
}
