import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/shapes_from_svg/main_gradient.dart';
import '../../widgets/buttons/entry_button.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
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
            onTap: () {
              Navigator.of(context).pushNamed('/home');
            },
            title: 'Вхід',
          ),
        ],
      ),
    );
  }
}
