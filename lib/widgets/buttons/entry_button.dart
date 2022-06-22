import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/app_colors.dart';
import '../uncategorized/splash_box.dart';

class EntryButton extends StatelessWidget {
  EntryButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final double radius = 40.0.w;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Material(
          elevation: 10.h,
          shadowColor: AppColors.black,
          borderRadius: BorderRadius.circular(radius),
          child: ShapeOfButton(
            title: title,
            radius: radius,
          ),
        ),
        SplashBox(
          borderRadius: BorderRadius.circular(radius),
          onTap: onTap,
        ),
      ],
    );
  }
}

class ShapeOfButton extends StatelessWidget {
  const ShapeOfButton({
    Key? key,
    required this.title,
    required this.radius,
  }) : super(key: key);

  final double radius;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 140.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.black,
          width: 3.0.w,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 1,
            offset: Offset(0.w, 2.h),
          )
        ],
        color: AppColors.buttons,
        borderRadius: BorderRadius.circular(radius),
      ),
      alignment: Alignment.center,
      child: _Text(
        title: title,
      ),
    );
  }
}

class _Text extends StatelessWidget {
  const _Text({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        decoration: TextDecoration.none,
        letterSpacing: 4.sp,
        fontFamily: 'SF UI Display',
        fontSize: 70.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.text,
      ),
    );
  }
}
