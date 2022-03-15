import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madura_chandima_flutter_interview/configs/color_config.dart';
import 'package:madura_chandima_flutter_interview/configs/text_style_config.dart';
import 'package:madura_chandima_flutter_interview/screens/home.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            textTheme: TextTheme(
                headline1: TextStyle(
                    color: ColorConfig.black,
                    fontFamily: BOLD_FONT,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),
                headline2: TextStyle(
                    color: ColorConfig.white,
                    fontFamily: BOLD_FONT,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600),
                headline3: TextStyle(
                    color: ColorConfig.black,
                    fontFamily: BOLD_FONT,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold))),
        home: const Home(),
      ),
    );
  }
}
