import 'package:flutter/material.dart';
import 'package:sberbank_lab/themes/colors.dart';

class TextStyles {
  static TextStyle primary(double? fontSize) {
    return TextStyle(
      color: MyColors.TextTitleColor,
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.70,
    );
  }

  static TextStyle primaryBold(double? fontSize) {
    return TextStyle(
      color: MyColors.TextTitleColor,
      fontSize: fontSize,
      fontFamily: 'SF Pro Text',
      fontWeight: FontWeight.w700,
      letterSpacing: -0.42,
    );
  }

  static TextStyle userName(double? fontSize) {
    return TextStyle(
      color: MyColors.TextTitleColor,
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
      fontFamily: 'SF Pro Text',
    );
  }

  static TextStyle secondary(double? fontSize) {
    return TextStyle(
      color: MyColors.TextSubtitleColor,
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      fontFamily: 'SF Pro Text',
      letterSpacing: -0.42,
    );
  }
}
