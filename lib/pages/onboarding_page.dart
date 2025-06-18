import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(height: 30),
          // Logo Finli App
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/amcc-logo-new-blue.png'),
              Text(
                'Finli',
                style: GoogleFonts.plusJakartaSans(
                  color: Color(0xFF3B82F6),
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 42),
          Image.asset('assets/img_onboarding.png'),
          const SizedBox(height: 24),
          Text(
            'Ketahui Ke Mana Uangmu\nPergi',
            textAlign: TextAlign.center,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 32),
          Text(
            'Pantau pemasukan, pengeluaran, dan tren\nkeuanganmu dengan mudah dalam satu tempat.\nAtur anggaranmu dengan lebih simpel!',
            textAlign: TextAlign.center,
            style: GoogleFonts.plusJakartaSans(fontSize: 12),
          ),
          const SizedBox(height: 62),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },

            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF3B82F6),
              padding: const EdgeInsets.symmetric(vertical: 24),
            ),
            child: Text(
              'Masuk',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
