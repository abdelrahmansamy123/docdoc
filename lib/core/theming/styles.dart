import 'dart:ui';

import 'package:doctor/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle fontSize24Bold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static TextStyle fontSize32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.kPrimaryColor,
  );

  static TextStyle fontSize14BlueBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: ColorsManager.kGray,
  );

  static TextStyle fontSize16BlueBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
}
