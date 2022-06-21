import 'dart:io';

import 'package:app_soft_wars/api/tasks_api.dart';
import 'package:app_soft_wars/models/task_response.dart';
import 'package:app_soft_wars/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../resources/shapes_from_svg/main_gradient.dart';
import '../utils/constants.dart';
import '../widgets/buttons/app_bar_button.dart';
import '../widgets/buttons/top_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        size: Size(
          widthOfScreen.w,
          heightOfScreen.h,
        ),
        painter: CustomMainGradient(),
        child: Column(
          children: [
            SizedBox(
              height: 140.h,
            ),
            const TopBar(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                ),
                child: FutureBuilder<List<Task>?>(
                  future: TasksApi().fetchUserTasks(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return Card(
                            color: AppColors.infoButton,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.w)),
                            ),
                            child: SizedBox(
                              width: 100.w,
                              height: 170.h,
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    int.parse(snapshot.data![index].type) == 0
                                        ? 'assets/icons/work_outline_icon.svg'
                                        : 'assets/icons/home_icon.svg',
                                    height: 100.0.h,
                                    width: 100.0.w,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                  Column(
                                    children: [
                                      _TitleText(
                                        text: snapshot.data![index].name,
                                      ),
                                      _TitleText(
                                        text: DateFormat('dd.MM.yyyy').format(
                                            snapshot.data![index].syncTime),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            // ListTile(
                            //   title: Text('Name: ${snapshot.data![index].name}'),
                            //   subtitle:
                            //       Text('Status: ${snapshot.data![index].status}'),
                            //   // leading: Container(
                            //   //   width: 150.w,
                            //   //   decoration: BoxDecoration(
                            //   //     borderRadius: BorderRadius.circular(20.w),
                            //   //   image: DecorationImage(image: NetworkImage(snapshot.data![index].))
                            //   //   ),),
                            // ),
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TitleText extends StatelessWidget {
  const _TitleText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          decoration: TextDecoration.none,
          letterSpacing: 2.sp,
          fontFamily: 'SF UI Display',
          fontSize: 40.sp,
          fontWeight: FontWeight.w900,
          color: AppColors.text,
        ),
      ),
    );
  }
}
