import 'package:flutter/material.dart';
import 'package:sberbank_lab/Themes/colors.dart';
import 'package:sberbank_lab/models/ModelsData.dart';
import 'package:sberbank_lab/themes/theme.dart';
import 'package:sberbank_lab/widgets/appbar.dart';
import 'package:sberbank_lab/widgets/tariffs_and_limits_item.dart';

import 'sceens/mainscreen.dart';
import 'widgets/horizontal_list_item.dart';
import 'widgets/section_header.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      home: MainScreen(),
    );
  }
}
