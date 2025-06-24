abstract class AuthEvent {}

class LoginRequested extends AuthEvent { // Event untuk meminta login
  final String email; // Email pengguna
  final String password; // Password pengguna
  // Constructor untuk inisialisasi email dan password

  LoginRequested(this.email, this.password); // Inisialisasi email dan password
}

class RegisterRequested extends AuthEvent { // Event untuk meminta register
  final String email; // Email pengguna
  final String password; // Password pengguna

  RegisterRequested(this.email, this.password); // Inisialisasi email dan password
}

class LogoutRequested extends AuthEvent {} // Event untuk meminta logout