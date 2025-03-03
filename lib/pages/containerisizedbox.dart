import 'package:flutter/material.dart';

class ContainerSizedBoxPage extends StatelessWidget {
  const ContainerSizedBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Container & SizedBox")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Contoh penggunaan Container
            Container(
              width: 200, // Lebar Container
              height: 100, // Tinggi Container
              padding: const EdgeInsets.all(10), // Padding dalam Container
              margin: const EdgeInsets.all(10), // Margin luar Container
              decoration: BoxDecoration(
                color: Colors.blue, // Warna latar belakang
                borderRadius: BorderRadius.circular(10), // Sudut melengkung
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: Offset(3, 3), // Efek bayangan
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  "Container Widget",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),

            // SizedBox sebagai pemisah dengan tinggi 20
            const SizedBox(height: 20),

            // Contoh penggunaan SizedBox untuk mengatur ukuran widget
            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("SizedBox Button"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
