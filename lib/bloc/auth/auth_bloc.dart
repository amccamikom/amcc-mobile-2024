import 'package:bloc/bloc.dart'; // Paket untuk mengelola state menggunakan BLoC (Business Logic Component).
import 'package:firebase_auth/firebase_auth.dart'; // Paket untuk autentikasi menggunakan Firebase.
import 'auth_event.dart'; // File yang mendefinisikan event untuk AuthBloc.
import 'auth_state.dart'; // File yang mendefinisikan state untuk AuthBloc.

// AuthBloc adalah kelas yang mengelola logika autentikasi.
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  // Membuat instance FirebaseAuth untuk mengakses fungsi autentikasi Firebase.
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Constructor AuthBloc, memulai dengan state awal `AuthInitial`.
  AuthBloc() : super(AuthInitial()) {
    // Menangani event LoginRequested.
    on<LoginRequested>((event, emit) async {
      emit(AuthLoading()); // Emit state AuthLoading untuk menunjukkan proses sedang berjalan.
      try {
        // Mencoba login dengan email dan password yang diberikan.
        UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: event.email, // Email dari event.
          password: event.password, // Password dari event.
        );
        // Jika berhasil, emit state Authenticated dengan user yang berhasil login.
        emit(LoginAuthenticated(userCredential.user!));
      } catch (e) {
        // Jika terjadi error, emit state AuthError dengan pesan error.
        emit(AuthError("Login gagal: ${e.toString()}"));
        emit(Unauthenticated()); // Emit state Unauthenticated untuk menunjukkan user tidak login.
      }
    });

    // Menangani event RegisterRequested.
    on<RegisterRequested>((event, emit) async {
      emit(AuthLoading()); // Emit state AuthLoading untuk menunjukkan proses sedang berjalan.
      try {
        // Mencoba Register dengan email dan password yang diberikan.
        UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: event.email, // Email dari event.
          password: event.password, // Password dari event.
        );
        // Jika berhasil, emit state Authenticated dengan user yang berhasil Register.
        emit(RegisterAuthenticated(userCredential.user!));
      } catch (e) {
        // Jika terjadi error, emit state AuthError dengan pesan error.
        emit(AuthError("Register gagal: ${e.toString()}"));
        emit(Unauthenticated()); // Emit state Unauthenticated untuk menunjukkan user tidak Register.
      }
    });

    // Menangani event LogoutRequested.
    on<LogoutRequested>((event, emit) async {
      await _auth.signOut(); // Melakukan logout dari Firebase.
      emit(Unauthenticated()); // Emit state Unauthenticated setelah logout.
    });
  }
}