import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/amcc-logo-new-blue.png'),
                Text(
                  'Finli',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF3B82F6),
                  ),
                ),
              ],
            ),
            SizedBox(height: 43),
            Image.asset('assets/img_login.png', height: 183),
            SizedBox(height: 43),
            Text(
              'Selamat Datang',
              textAlign: TextAlign.center,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Silahkan login untuk melanjutkan',

              textAlign: TextAlign.center,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 14,
                fontWeight: FontWeight.w100,
              ),
            ),
            SizedBox(height: 48),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(24),
              ),
              child: TextField(
                controller: _emailcontroller,
                decoration: InputDecoration(
                  icon: Icon(Icons.person, color: Colors.grey),
                  hintText: 'Email Address',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(24),
              ),
              child: TextField(
                controller: _passwordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock, color: Colors.grey),
                  hintText: 'Password',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 65),
            ElevatedButton(
              onPressed: () {
                final email = _emailcontroller.text.trim();
                final password = _passwordcontroller.text.trim();

                if (email == 'admin@gmail.com' && password == 'admin123') {
                  Navigator.pushNamed(context, '/home');
                } else {
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(title: Text('Invalid Login')),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 28),
                backgroundColor: Color(0xFF3B82F6),
              ),
              child: Text(
                'Login',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
