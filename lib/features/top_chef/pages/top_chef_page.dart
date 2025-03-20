
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/colors.dart';
import '../../common/widgets/recipe_bottom_navigation_bar.dart';


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