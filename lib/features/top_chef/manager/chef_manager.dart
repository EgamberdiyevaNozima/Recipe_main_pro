// class Chef {
//   final String name;
//   final String username;
//   final String image;
//   final int likes;
//
//   Chef({required this.name, required this.username, required this.image, required this.likes});
// }
//
// class ChefManager {
//   static List<Chef> mostViewedChefs = [
//     Chef(name: "Neil Tran-Chef", username: "@neil_tran", image: "assets/images/ch1.png", likes: 6687),
//     Chef(name: "Jessica Davis-Chef", username: "@jessica_davis", image: "assets/images/ch2.png", likes: 5687),
//   ];
//
//   static List<Chef> mostLikedChefs = [
//     Chef(name: "Daniel Martinez", username: "@daniel-chef", image: "assets/images/ch3.png", likes: 6687),
//     Chef(name: "Aria Chang", username: "@ariachang-chef", image: "assets/images/ch4.png", likes: 5687),
//   ];
//
//   static List<Chef> newChefs = [
//     Chef(name: "Lily Chen", username: "@lily", image: "assets/images/ch1.png", likes: 0),
//     Chef(name: "James Brown", username: "@james", image: "assets/images/ch3.png", likes: 0),
//   ];
// }

// class Chef {
//   final String name;
//   final String username;
//   final String image;
//   final int likes;
//
//   Chef({required this.name, required this.username, required this.image, required this.likes});
// }
//
// class ChefManager {
//   static List<Chef> mostViewedChefs = [
//     Chef(name: "Neil Tran-Chef", username: "@neil_tran", image: "assets/images/ch1.png", likes: 6687),
//     Chef(name: "Jessica Davis-Chef", username: "@jessica_davis", image: "assets/images/ch2.png", likes: 5687),
//   ];
//
//   static List<Chef> mostLikedChefs = [
//     Chef(name: "Daniel Martinez", username: "@daniel-chef", image: "assets/images/ch3.png", likes: 6687),
//     Chef(name: "Aria Chang", username: "@ariachang-chef", image: "assets/images/ch4.png", likes: 5687),
//   ];
//
//   static List<Chef> newChefs = [
//     Chef(name: "Lily Chen", username: "@lily", image: "assets/images/ch1.png", likes: 0),
//     Chef(name: "James Brown", username: "@james", image: "assets/images/ch3.png", likes: 0),
//   ];
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class TopChefPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColors.backgroundColor,
      extendBody: true,
      appBar: AppBar(
        leading: SvgPicture.asset('assets/icons/vector.svg',width: 24,height: 14,),
        backgroundColor: AppColors.backgroundColor,
        title: Center(
          child: Text("Top CHef",style: TextStyle(color: AppColors.redPinkMain,fontSize: 20,fontWeight: FontWeight.w600),
          ),
        ),
        actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 430,
                height: 285,
                color: AppColors.redPinkMain,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildChefImage("assets/images/img.png"),
                    _buildChefImage("assets/images/img_1.png"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildChefImage("assets/images/img.png"),
                _buildChefImage("assets/images/img.png"),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildChefImage("assets/images/img.png"),
                _buildChefImage("assets/images/img.png"),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: RecipeBottomNavigationBar(),
    );
  }

  Widget _buildChefImage(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(imagePath, width: 170, height: 226, fit: BoxFit.cover),
    );
  }
}