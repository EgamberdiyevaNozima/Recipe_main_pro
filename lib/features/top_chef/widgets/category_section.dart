// import 'package:flutter/material.dart';
// import '../manager/chef_manager.dart';
// import 'chef_card.dart';
//
// class CategorySection extends StatelessWidget {
//   final String title;
//   final List<Chef> chefs;
//   final Color color;
//
//   CategorySection({required this.title, required this.chefs, required this.color});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(title, style: TextStyle(color: Colors.white, fontSize: 20)),
//         SizedBox(height: 10),
//         Container(
//           color: color,
//           height: 180,
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: chefs.length,
//             itemBuilder: (context, index) => ChefCard(chef: chefs[index]),
//           ),
//         )
//       ],
//     );
//   }
// }
