import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:maslaha/register_screen.dart';

import 'core/utils/routing/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375,667),
      builder:(context,child)=> MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner:false,
        title: 'Ainragy',

      ),
    );
  }
}


