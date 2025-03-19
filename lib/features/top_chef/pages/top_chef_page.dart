// // import 'package:flutter/material.dart';
// // import '../widgets/category_section.dart';
// // import '../manager/chef_manager.dart';
// //
// // class TopChefPage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.black,
// //       appBar: AppBar(title: Text("Top Chef"), backgroundColor: Colors.brown.shade900),
// //       body: SingleChildScrollView(
// //         child: Column(
// //           children: [
// //             CategorySection(title: "Most Viewed Chefs", chefs: ChefManager.mostViewedChefs, color: Colors.redAccent),
// //             CategorySection(title: "Most Liked Chefs", chefs: ChefManager.mostLikedChefs, color: Colors.brown),
// //             CategorySection(title: "New Chefs", chefs: ChefManager.newChefs, color: Colors.grey),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../manager/top_chef_bloc.dart';
// import '../widgets/category_section.dart';
//
// class TopChefPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(title: Text("Top Chef"), backgroundColor: Colors.brown.shade900),
//       body: BlocBuilder<ChefBloc, ChefState>(
//         builder: (context, state) {
//           if (state is ChefLoadingState) {
//             return Center(child: CircularProgressIndicator());
//           }
//           if (state is ChefErrorState) {
//             return Center(child: Text(state.message, style: TextStyle(color: Colors.white)));
//           }
//           if (state is ChefLoadedState) {
//             return SingleChildScrollView(
//               child: Column(
//                 children: [
//                   CategorySection(title: "Most Viewed Chefs", chefs: state.mostViewedChefs, color: Colors.redAccent),
//                   CategorySection(title: "Most Liked Chefs", chefs: state.mostLikedChefs, color: Colors.brown),
//                   CategorySection(title: "New Chefs", chefs: state.newChefs, color: Colors.grey),
//                 ],
//               ),
//             );
//           }
//           return SizedBox();
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/colors.dart';
import '../../common/widgets/recipe_app_bar.dart';
import '../../common/widgets/recipe_appbar_action_container.dart';
import '../widgets/chef_card.dart';

class TopChefsView extends StatelessWidget {
  const TopChefsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: RecipeAppBar(title: "Top Chef", actions: [
          Row(
            spacing: 5,
            children: [
              RecipeAppBarActionContainer(
                  containerColor: AppColors.pinkSub,
                  svgColor: AppColors.redPinkMain,
                  svg: "assets/icons/notification.svg"),
              RecipeAppBarActionContainer(
                  containerColor: AppColors.pinkSub,
                  svgColor: AppColors.redPinkMain,
                  svg: "assets/icons/search.svg"),
            ],
          )
        ]),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 285.h,
                  padding:
                  EdgeInsets.symmetric(horizontal: 36.w, vertical: 9.h),
                  decoration: BoxDecoration(
                    color: AppColors.redPinkMain,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TopChefTexts(
                          text: "Most Viewed Chef", textColor: Colors.white),
                      SizedBox(height: 6),
                      Stack(
                          children: [
                            Positioned(
                              child: Container(
                                width: 160.w,
                                height: 76.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)),
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(14),
                              child: Image(
                                image: AssetImage(
                                  "assets/images/review.png",
                                ),
                                width: 170.w,
                                height: 153.h,
                              ),
                            )
                          ])
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}