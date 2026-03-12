import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_assessment/core/routing/app_routing.dart';
import 'package:technical_assessment/core/routing/routes.dart';
import 'package:technical_assessment/features/home/screens/home_screen.dart';

void main() {
  runApp( MyApp(appRouter: AppRouter()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
                scaffoldBackgroundColor: Colors.black
            ),
            initialRoute: Routes.home,
            onGenerateRoute: appRouter.generateRoute,
            // home:const HomeScreen()
        );
      },

    );
  }
}
