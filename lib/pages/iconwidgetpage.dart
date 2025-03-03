import 'package:flutter/material.dart';

class IconWidgetPage extends StatelessWidget {
  const IconWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Icon Widget")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Menampilkan ikon bawaan dari Flutter
            const Icon(
              Icons.home, // Menggunakan ikon "home"
              size: 50, // Mengatur ukuran ikon
              color: Colors.blue, // Mengubah warna ikon
            ),
            
            SizedBox(height: 20), // Memberikan jarak antar widget
            
            // Ikon dengan efek bayangan
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Membuat ikon berbentuk lingkaran
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: const Icon(
                Icons.star, // Ikon "star"
                size: 50,
                color: Colors.amber,
              ),
            ),
            
            SizedBox(height: 20),
            
            // Ikon dengan latar belakang bulat
            CircleAvatar(
              radius: 30, // Ukuran lingkaran
              backgroundColor: Colors.red,
              child: const Icon(
                Icons.favorite, // Ikon "favorite"
                size: 30,
                color: Colors.white,
              ),
            ),
            
            SizedBox(height: 20),
            
            // Tombol dengan ikon dan teks
            ElevatedButton.icon(
              onPressed: () {}, // Fungsi ketika tombol ditekan
              icon: const Icon(Icons.send), // Ikon di sebelah kiri teks
              label: const Text("Kirim"), // Teks di dalam tombol
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}