# Flutter Fundamental 2

## 📌 Tentang Proyek

Proyek ini merupakan kumpulan materi dasar dalam pengembangan aplikasi Flutter. Materi ini mencakup penggunaan berbagai widget penting seperti Container, SizedBox, Image, dan Icon.

## 📚 Materi Flutter Fundamental

### 1️⃣ **Packages Page - Fetch Data dari API**
Halaman ini menampilkan daftar hewan yang diambil dari API menggunakan **http package**. Data yang ditampilkan meliputi nama, spesies, deskripsi, dan gambar.

📌 **Teknologi yang digunakan:**
- `FutureBuilder` untuk menangani request API
- `http` package untuk melakukan fetch data
- `ListView.builder` untuk menampilkan daftar hewan
- `AlertDialog` untuk menampilkan detail hewan

📂 **File:** `packages_page.dart`

---

### 2️⃣ **Image Widget**
Widget **Image** digunakan untuk menampilkan gambar dalam aplikasi Flutter.

📌 **Cara menggunakan:**
- `Image.asset('assets/image.png')` → Menampilkan gambar dari folder assets.
- `Image.network('https://example.com/image.png')` → Menampilkan gambar dari URL.
- `Image.file(File('path/to/image'))` → Menampilkan gambar dari file lokal.

📂 **File:** `image_widget_page.dart`

---

### 3️⃣ **Icon Widget**
Widget **Icon** digunakan untuk menampilkan ikon dalam aplikasi Flutter.

📌 **Cara menggunakan:**
- `Icon(Icons.home)` → Menampilkan ikon bawaan Flutter.
- `Icon(Icons.star, color: Colors.yellow, size: 50.0)` → Menampilkan ikon dengan warna dan ukuran tertentu.
- `IconButton(icon: Icon(Icons.add), onPressed: () {})` → Menggunakan ikon sebagai tombol interaktif.

📂 **File:** `icon_widget_page.dart`

---

### 4️⃣ **Container & SizedBox**
- **Container** digunakan untuk membungkus widget lain dengan properti seperti padding, margin, dan dekorasi.
- **SizedBox** digunakan untuk memberikan ruang kosong dengan ukuran tertentu.

📌 **Contoh penggunaan:**
```dart
Container(
  width: 200,
  height: 100,
  color: Colors.blue,
  child: Center(child: Text("Hello, Flutter!")),
)
```

```dart
SizedBox(height: 20) // Memberikan jarak vertikal 20px
```

📂 **File:** `container_sizedbox_page.dart`

---

## 📌 Cara Menjalankan Proyek
1. Clone repository ini:
   ```bash
   git clone https://github.com/amccamikom/amcc-mobile-2024.git
   ```
2. Masuk ke folder proyek:
   ```bash
   cd fundamental_2
   ```
3. Jalankan perintah berikut untuk mengunduh dependency:
   ```bash
   flutter pub get
   ```
4. Jalankan aplikasi:
   ```bash
   flutter run
   ```

📌 **Pastikan Emulator atau Perangkat Fisik terhubung!**

---

## 📢 Kontribusi
Jika ingin berkontribusi dalam proyek ini, silakan fork repository dan ajukan pull request.

🚀 **Happy Coding!** 🚀

