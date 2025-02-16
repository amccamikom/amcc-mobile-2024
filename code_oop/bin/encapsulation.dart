class BankAccount {
  // Private property (_saldo hanya bisa diakses di dalam class ini)
  double _saldo = 0;

  // Method untuk menambah saldo
  void deposit(double jumlah) {
    _saldo += jumlah;
    print("Saldo bertambah menjadi: $_saldo");
  }

  // Method untuk melihat saldo (getter)
  double getSaldo() {
    return _saldo;
  }
}

void main() {
  BankAccount rekening = BankAccount();
  rekening.deposit(1000);
  print("Saldo saat ini: ${rekening.getSaldo()}");
}
