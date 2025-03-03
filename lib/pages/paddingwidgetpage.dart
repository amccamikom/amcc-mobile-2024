import 'package:flutter/material.dart';

// Definisikan sebuah kelas StatelessWidget bernama PaddingWidgetPage
class PaddingWidgetPage extends StatelessWidget {
  const PaddingWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold menyediakan struktur dasar untuk halaman
    return Scaffold(
      appBar: AppBar(title: const Text("Padding Widget")), // AppBar dengan judul
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding di seluruh sisi sebesar 16 piksel
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Menyusun anak-anak di awal (kiri) kolom
          children: [
            const Text(
              "Contoh Padding di Flutter",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Teks dengan ukuran dan ketebalan font
            ),
            const SizedBox(height: 10), // Memberi jarak vertikal sebesar 10 piksel

            // Padding menggunakan widget Padding
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Padding horizontal 20 dan vertikal 10
              child: Container(
                color: Colors.blue, // Warna latar belakang biru
                child: const Text(
                  "Padding Horizontal: 20, Vertical: 10",
                  style: TextStyle(color: Colors.white), // Teks dengan warna putih
                ),
              ),
            ),

            // Padding menggunakan properti padding pada Container
            Container(
              padding: const EdgeInsets.all(15), // Padding di semua sisi sebesar 15 piksel
              color: Colors.green, // Warna latar belakang hijau
              child: const Text(
                "Padding di dalam Container",
                style: TextStyle(color: Colors.white), // Teks dengan warna putih
              ),
            ),

            // Padding pada Card
            Card(
              elevation: 4, // Memberi efek bayangan pada Card
              margin: const EdgeInsets.all(20), // Margin di semua sisi sebesar 20 piksel
              child: Padding(
                padding: const EdgeInsets.all(12), // Padding di semua sisi sebesar 12 piksel
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Menyusun anak-anak di awal (kiri) kolom
                  children: const [
                    Text("Padding dalam Card", style: TextStyle(fontSize: 16)), // Teks dengan ukuran font 16
                    SizedBox(height: 5), // Memberi jarak vertikal sebesar 5 piksel
                    Text("Menggunakan Padding untuk memberi ruang di dalam Card."), // Teks penjelasan
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}