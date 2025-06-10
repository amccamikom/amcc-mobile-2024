// import 'package:finli_app/widgets/transaction_model.dart';
// import 'package:flutter/material.dart';


// class TransactionItem extends StatelessWidget {
//   final TransactionModel data;

//   const TransactionItem({super.key, required this.data});

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: CircleAvatar(
//         backgroundColor: data.isIncome ? Colors.blue[50] : Colors.red[50],
//         child: Icon(
//           data.isIncome ? Icons.arrow_upward : Icons.arrow_downward,
//           color: data.isIncome ? Colors.blue : Colors.red,
//         ),
//       ),
//       title: Text(data.title, style: const TextStyle(fontWeight: FontWeight.bold)),
//       subtitle: Text(data.subtitle),
//       trailing: Text(
//         "${data.isIncome ? '+' : '-'}Rp ${data.amount}",
//         style: TextStyle(
//           fontWeight: FontWeight.w600,
//           color: data.isIncome ? Colors.green : Colors.red,
//         ),
//       ),
//     );
//   }
// }
