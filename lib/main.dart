// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:provider/provider.dart';
//
// import 'core/dependencies.dart';
// import 'core/routing/router.dart';
// import 'core/utils/themes.dart';
//
//
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
//   runApp(RecipeApp());
// }
//
// class RecipeApp extends StatelessWidget {
//   const RecipeApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     ScreenUtil.init(context, designSize: const Size(430, 932));
//     // return MultiProvider(
//     //   providers: providers,
//     //   builder: (context, child) => MaterialApp.router(
//     //     routerConfig: router,
//     //     debugShowCheckedModeBanner: false,
//     //     themeMode: ThemeMode.dark,
//     //     darkTheme: AppThemes.darkTheme,
//     //   ),
//     // );
//     return MaterialApp()
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'core/dependencies.dart';
import 'core/routing/router.dart';
import 'core/utils/themes.dart';
import 'features/top_chef/manager/chef_manager.dart';
import 'features/top_chef/pages/top_chef_page.dart';
import 'features/top_chef_profile/widgets/top_chef_profiles.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(430, 932));
    // return MultiProvider(
    //   providers: providers,
    //   builder: (context, child) => MaterialApp.router(
    //     routerConfig: router,
    //     debugShowCheckedModeBanner: false,
    //     themeMode: ThemeMode.dark,
    //     darkTheme: AppThemes.darkTheme,
    //   ),
    // );
    // }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TopChefProfile(),
    );
  }

}