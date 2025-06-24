class TransactionItem {/// Model untuk data transaksi yang akan digunakan dalam aplikasi.
  final String id; // ID unik untuk item transaction.
  final String name; // Nama item transaction.
  final String amount; // ID jenis item transaction.
  final String type; // Nama jenis item transaction.

  TransactionItem({
    required this.id,
    required this.name,
    required this.amount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'amount': amount,
      'type': type,
    };
  }

  factory TransactionItem.fromMap(Map<String, dynamic> map) {
    return TransactionItem(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      amount: map['amount'] ?? '',
      type: map['type'] ?? '',
    );
  }
}