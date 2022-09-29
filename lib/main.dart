import 'package:booktickets/screens/bottom_bar.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'utils/my_custom_scroll_behaviour.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: BottomBar(),
    );
  }
}
