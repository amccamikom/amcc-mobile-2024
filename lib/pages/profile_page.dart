import 'package:finli_app/pages/login_page.dart';
import 'package:finli_app/theme/color.dart';
import 'package:finli_app/widgets/profile_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Mengimpor paket Flutter BLoC untuk state management.
import 'package:finli_app/bloc/auth/auth_bloc.dart'; // Mengimpor AuthBloc untuk logika autentikasi.
import 'package:finli_app/bloc/auth/auth_event.dart'; // Mengimpor event untuk AuthBloc.
import 'package:finli_app/bloc/auth/auth_state.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // HEADER SECTION
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 101, 155, 242),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(32),
                bottomLeft: Radius.circular(32),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 44),
                CircleAvatar(radius: 60),
                const SizedBox(height: 12),
                Text(
                  'Riyan',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 20,
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'riyan@gmail.com',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    color: AppColors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),

          // END OF HEADER SECTION
          const SizedBox(height: 34),
          // PROFILE BUTTON SECTION
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ProfileButton(
                    icon: Icon(Icons.account_circle),
                    title: 'Ubah Profil',
                    onTap: () {},
                  ),
                  const SizedBox(height: 40),
                  ProfileButton(
                    icon: Icon(Icons.build_circle),
                    title: 'Pengaturan',
                    onTap: () {},
                  ),
                  const SizedBox(height: 40),
                  ProfileButton(
                    icon: Icon(Icons.https_rounded),
                    title: 'Ganti Password',
                    onTap: () {},
                  ),
                  const SizedBox(height: 40),
                  ProfileButton(
                    icon: Icon(Icons.info_rounded),
                    title: 'Kebijakan Privasi',
                    onTap: () {},
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),

          // END OF PROFILE BUTTON SECTION

          // BUTTON LOGOUT
          BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is Unauthenticated) {
                // Jika logout berhasil, tampilkan pesan dan navigasi ke halaman login.
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('logout successful!')),
                );
                Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => LoginPage()),
                  (route) => false,
                );
              } else if (state is AuthError) {
                // Jika logout gagal, tampilkan pesan error.
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(state.message)));
              }
            },
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 120,
                ),
                child: GestureDetector(
                  onTap: () {
                    context.read<AuthBloc>().add(LogoutRequested());
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColors.warning,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Center(
                      child: Text(
                        'Logout',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
