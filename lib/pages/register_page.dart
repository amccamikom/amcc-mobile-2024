import 'package:finli_app/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Mengimpor paket Flutter BLoC untuk state management.
import 'package:finli_app/bloc/auth/auth_bloc.dart'; // Mengimpor AuthBloc untuk logika autentikasi.
import 'package:finli_app/bloc/auth/auth_event.dart'; // Mengimpor event untuk AuthBloc.
import 'package:finli_app/bloc/auth/auth_state.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailcontroller = TextEditingController();

  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _confirmationPasswordcontroller = TextEditingController();

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
              'Silahkan Register untuk melanjutkan',

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
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(24),
              ),
              child: TextField(
                controller: _confirmationPasswordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock, color: Colors.grey),
                  hintText: 'Konfirmasi Password',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 12),

            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is RegisterAuthenticated) {
                  // Jika Register berhasil, tampilkan pesan dan navigasi ke halaman home.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Register successful!')),
                  );
                  Navigator.pushNamed(
                    context,
                    '/main',
                  ); // Navigasi ke halaman home.
                } else if (state is AuthError) {
                  // Jika Register gagal, tampilkan pesan error.
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(state.message)));
                }
              },
              builder: (context, state) {
                return ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(AppColors.blue),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          24,
                        ), // Set your desired radius
                      ),
                    ),
                  ),
                  // Tampilkan teks "Register" jika tidak sedang loading.
                  onPressed:
                      state is AuthLoading
                          ? null // Nonaktifkan tombol jika sedang loading.
                          : () {
                            if (_emailcontroller.text.isEmpty ||
                                _passwordcontroller.text.isEmpty ||
                                _confirmationPasswordcontroller.text.isEmpty) {
                              // Validasi input kosong.
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Please fill in all fields'),
                                ),
                              );
                            } else if ( _passwordcontroller.text != _confirmationPasswordcontroller.text) {
                              // Validasi jika password dan konfirmasi password tidak cocok.
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Password and confirmation do not match'),
                                ),
                              );
                            } else {
                              // Memicu event Register dengan email dan password.
                              context.read<AuthBloc>().add(
                                RegisterRequested(
                                  _emailcontroller.text.trim(),
                                  _passwordcontroller.text.trim(),
                                ),
                              );
                            }
                          },
                  child:
                      state is AuthLoading
                          ? const CircularProgressIndicator(
                            color:
                                Colors
                                    .white, // Tampilkan indikator loading di tombol.
                          )
                          : Text(
                            "Register",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sudah punya akun?"),
                TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.symmetric(horizontal: 4, vertical: 0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    "Login Sekarang!",
                    style: TextStyle(
                      color: AppColors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
