import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'resources/shapes_from_svg/main_gradient.dart';
import 'widgets/buttons/entry_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        home: CustomPaint(
          size: Size(
            1080.w,
            1920.h,
          ),
          painter: CustomMainGradient(),
          child: Column(
            children: [
              SizedBox(
                height: 1190.h,
              ),
              EntryButton(
                onTap: () {},
                title: 'Вхід',
              ),
            ],
          ),
        ),
      ),
      designSize: const Size(1080, 1920),
    );
  }
}
