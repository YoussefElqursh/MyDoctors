import 'package:doctorna/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24TextColor700Wight = TextStyle(
    fontSize: 24.sp,
    color: AppColors.textColor,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font32primaryColorBold = TextStyle(
    fontSize: 32.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle font13subTextColorRegular = TextStyle(
    fontSize: 13.sp,
    color: AppColors.subTextColor,
    fontWeight: FontWeight.normal,
  );

  static TextStyle font16whiteColorSemiBold = TextStyle(
    fontSize: 16.sp,
    color: AppColors.whiteColor,
    fontWeight: FontWeight.w500,
  );
}