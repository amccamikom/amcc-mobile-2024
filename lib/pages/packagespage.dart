import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http; // Library untuk melakukan HTTP request

class PackagesPage extends StatefulWidget {
  const PackagesPage({super.key});

  @override
  _PackagesPageState createState() => _PackagesPageState();
}

class _PackagesPageState extends State<PackagesPage> {
  // Fungsi untuk mengambil data hewan dari API
  Future<List<dynamic>> fetchAnimals() async {
    final response = await http.get(Uri.parse(
        'https://gist.githubusercontent.com/Aliendroid8045/b09f9ac24273b6fd8e5184bdf1d3a62e/raw/c0fbbe02a3973477f3e18fdf16cb9b1a7f979f6a/Animal.Json'));
    
    // Mengecek apakah request berhasil (status code 200)
    if (response.statusCode == 200) {
      return json.decode(response.body); // Mengubah JSON menjadi list
    } else {
      throw Exception('Failed to load animals'); // Jika gagal, lempar error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Packages - Animal List")), // Judul halaman
      body: FutureBuilder<List<dynamic>>( // Widget untuk menangani data asynchronous
        future: fetchAnimals(), // Memanggil fungsi fetchAnimals()
        builder: (context, snapshot) {
          // Jika masih loading, tampilkan indikator loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } 
          // Jika ada error, tampilkan pesan error
          else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } 
          // Jika data berhasil diambil, tampilkan dalam ListView
          else {
            final animals = snapshot.data!; // Ambil data dari snapshot
            return ListView.builder(
              itemCount: animals.length, // Jumlah item dalam list
              itemBuilder: (context, index) {
                final animal = animals[index]; // Ambil satu item hewan
                return Card(
                  margin: const EdgeInsets.all(8.0), // Beri margin agar lebih rapi
                  child: ListTile(
                    title: Text(animal['name']), // Nama hewan
                    subtitle: Text(animal['species']), // Jenis hewan
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(animal['name']),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                // Menampilkan gambar dari URL, jika gagal bisa diganti dengan placeholder
                                Image.network(
                                  animal['image'],
                                  errorBuilder: (context, error, stackTrace) {
                                    return Image.asset('assets/images/default.jpg'); // Gambar default jika gagal
                                  },
                                ),
                                const SizedBox(height: 10), // Jarak antar elemen
                                Text(animal['description']), // Deskripsi hewan
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context), // Tombol untuk menutup dialog
                                child: const Text("Close"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
