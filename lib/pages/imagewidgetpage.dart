import 'package:flutter/material.dart';

class ImageWidgetPage extends StatelessWidget {
  const ImageWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image Widget")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Pusatkan konten secara vertikal
          crossAxisAlignment: CrossAxisAlignment.center, // Pusatkan konten secara horizontal
          children: [
            // Menampilkan gambar dari assets (harus ada di folder assets dan didaftarkan di pubspec.yaml)
            Image.asset(
              'assets/apple.png', // Ganti dengan path gambar yang sesuai
              width: 200, // Atur lebar gambar
              height: 200, // Atur tinggi gambar
              fit: BoxFit.cover, // Sesuaikan gambar agar sesuai dalam kotak
            ),
            const SizedBox(height: 20), // Beri jarak antar widget
            
            // Menampilkan gambar dari internet
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Cape_Town_%28ZA%29%2C_Wale_Street_--_2024_--_3544.jpg/1920px-Cape_Town_%28ZA%29%2C_Wale_Street_--_2024_--_3544.jpg', // URL gambar
              width: 200,
              height: 200,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child; // Jika gambar sudah selesai dimuat, tampilkan gambar
                } else {
                  return const CircularProgressIndicator(); // Jika belum selesai, tampilkan loading
                }
              },
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.error, size: 50, color: Colors.red); // Tampilkan icon error jika gagal
              },
            ),
            const SizedBox(height: 20),
            
            // Menampilkan gambar dengan efek border dan shape
            ClipRRect(
              borderRadius: BorderRadius.circular(20), // Membuat sudut gambar melengkung
              child: Image.asset(
                'assets/woman.jpg',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}