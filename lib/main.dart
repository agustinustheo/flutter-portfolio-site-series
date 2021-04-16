import 'package:DiantarAje/pages/home.dart';
import 'package:flutter/material.dart';

import 'common/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DiantarAje',
      theme: ThemeData(
        primarySwatch: ColorPalette.swatchPrimaryColor,
      ),
      home: HomePage(),
    );
  }
}
