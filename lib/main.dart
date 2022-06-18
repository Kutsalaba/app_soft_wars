import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'pages/uncategorized/start_page.dart';
import 'routes/app_router.dart';
import 'utils/constants.dart';

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
        title: 'Named Routes Demo',
        initialRoute: '/',
        onGenerateRoute: AppRouter.generateRoute,
        routes: {
          StartPage.routeName: (_) => const StartPage(),
          //'/home': (context) => const HomePage(),
        },
      ),
      designSize: const Size(
        widthOfScreen,
        heightOfScreen,
      ),
    );
  }
}
