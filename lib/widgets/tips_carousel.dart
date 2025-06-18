// import 'package:flutter/material.dart';

// class TipsCarousel extends StatelessWidget {
//   const TipsCarousel({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final tips = [
//       {'title': 'How to design a better bottom navbar?', 'image': 'https://raw.githubusercontent.com/difadlyaulhaq/finli-App/refs/heads/main/assets/gambar_carousel.png?token=GHSAT0AAAAAAC3SXYOVXEG45MD3VS5SJLDM2BUTRNA'},
//       {'title': 'Introducing to Capture The Flag', 'image': 'https://raw.githubusercontent.com/difadlyaulhaq/finli-App/refs/heads/main/assets/gambar_carousel.png?token=GHSAT0AAAAAAC3SXYOVXEG45MD3VS5SJLDM2BUTRNA'},
//     ];

//     return SizedBox(
//       height: 180,
//       child: PageView.builder(
//         itemCount: tips.length,
//         controller: PageController(viewportFraction: 0.8),
//         itemBuilder: (context, index) {
//           final tip = tips[index];
//           return Container(
//             margin: const EdgeInsets.only(right: 16),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(16),
//               image: DecorationImage(
//                 image: NetworkImage(tip['image']!),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             child: Align(
//               alignment: Alignment.bottomLeft,
//               child: Container(
//                 padding: const EdgeInsets.all(8),
//                 color: Colors.black54,
//                 child: Text(
//                   tip['title']!,
//                   style: const TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
