import 'package:finli_app/pages/home_page.dart';
import 'package:finli_app/pages/login_page.dart';
import 'package:finli_app/pages/main_page.dart';
import 'package:finli_app/pages/onboarding_page.dart';
import 'package:finli_app/pages/register_page.dart';
import 'package:finli_app/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Mengimpor paket untuk inisialisasi Firebase.
import 'package:flutter_bloc/flutter_bloc.dart'; // Mengimpor paket Flutter BLoC untuk state management.
import 'package:finli_app/bloc/auth/auth_bloc.dart'; // Mengimpor AuthBloc untuk mengelola logika autentikasi.


void main() async {
   WidgetsFlutterBinding.ensureInitialized(); // Memastikan binding Flutter diinisialisasi sebelum menjalankan kode asinkron.
  await Firebase.initializeApp(); // Inisialisasi Firebase. Pastikan Firebase sudah diatur di proyek Anda.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
         BlocProvider(create: (_) => AuthBloc())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => SplashPage(),
            '/onboarding': (context) => OnboardingPage(),
            '/login': (context) => LoginPage(),
            '/home': (context) => HomePage(),
            '/main': (context) => MainPage(),
            '/register': (context) => RegisterPage(),
          },
        ),
    );
  }
}
