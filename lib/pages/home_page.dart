import 'dart:io';

import 'package:app_soft_wars/api/tasks_api.dart';
import 'package:app_soft_wars/models/task_response.dart';
import 'package:app_soft_wars/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                        return ListTile(
                          title: Text('Name: ${snapshot.data![index].name}'),
                          subtitle:
                              Text('Status: ${snapshot.data![index].status}'),
                          // leading: Container(
                          //   width: 150.w,
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(20.w),
                          //   image: DecorationImage(image: NetworkImage(snapshot.data![index].))
                          //   ),),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

