import 'package:flutter/material.dart';
import 'widgets/lesson_main_screen.dart';

class MainApplication extends StatelessWidget {
  const MainApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          textTheme: Typography.whiteCupertino),
      home: const LessonMainScreenWidget(),
    );
  }
}
