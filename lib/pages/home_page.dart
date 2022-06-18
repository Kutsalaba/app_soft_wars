import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/shapes_from_svg/main_gradient.dart';
import '../utils/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(
        widthOfScreen.w,
        heightOfScreen.h,
      ),
      painter: CustomMainGradient(),
      child: Column(
        children: [
          SizedBox(
            height: 1190.h,
          ),
        ],
      ),
    );
  }
}


