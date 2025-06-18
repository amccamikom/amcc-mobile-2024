// import 'package:finli_app/theme/color.dart';
// import 'package:flutter/material.dart';

// class BalanceCard extends StatelessWidget {
//   const BalanceCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: AppColors.blue,
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.blueAccent,
//             blurRadius: 10,
//             offset: const Offset(0, 4),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: const [
//           Text("Riyan", style: TextStyle(color: AppColors.white, fontSize: 18)),
//           SizedBox(height: 10),
//           Text(
//             "Total Balance :",
//             style: TextStyle(
//               color: AppColors.white,
//               fontSize: 22,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 10),
//           Text(
//             "Rp. 1.000.000",
//             style: TextStyle(
//               color: AppColors.white,
//               fontSize: 22,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 10),
//           Row(
//             children: [
//               Icon(Icons.arrow_downward, color: AppColors.white, size: 20),
//               SizedBox(width: 5),
//               Text(
//                 "Income",
//                 style: TextStyle(color: AppColors.white, fontSize: 14),
//               ),
//               Spacer(),
//               Icon(Icons.arrow_upward, color: AppColors.white, size: 20),
//               SizedBox(width: 5),
//               Text(
//                 "Expense",
//                 style: TextStyle(color: AppColors.white, fontSize: 14),
//               ),
//             ],
//           ),
//           SizedBox(height: 4),
//           Row(
            
//             children: [
//               Text(
//                 "Rp. 500.000",
//                 style: TextStyle(color: AppColors.white, fontSize: 16),
//               ),
//               Spacer(),
//               Text(
//                 "Rp. 300.000",
//                 style: TextStyle(color: AppColors.white, fontSize: 16),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
