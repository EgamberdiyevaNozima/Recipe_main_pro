// import 'package:flutter/material.dart';
// import '../manager/chef_manager.dart';
//
// class ChefCard extends StatelessWidget {
//   final Chef chef;
//
//   ChefCard({required this.chef});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.brown.shade800,
//       child: Column(
//         children: [
//           Image.asset(chef.image, fit: BoxFit.cover, height: 100),
//           Text(chef.name, style: TextStyle(color: Colors.white)),
//           Text(chef.username, style: TextStyle(color: Colors.grey)),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text("${chef.likes} ❤️", style: TextStyle(color: Colors.white)),
//               ElevatedButton(onPressed: () {}, child: Text("Follow"))
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class TopChefTexts extends StatelessWidget {
  const TopChefTexts({super.key, required this.text, required this.textColor});

  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w500,
        fontSize: 15,
      ),
    );
  }
}