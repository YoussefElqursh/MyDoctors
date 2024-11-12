import 'package:doctorna/core/helpers/font_weight_helper.dart';
import 'package:doctorna/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24TextColorBold = TextStyle(
    fontSize: 24.sp,
    color: AppColors.textColor,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font14TextColorMedium = TextStyle(
    fontSize: 14.sp,
    color: AppColors.textColor,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font12GrayColorRegular = TextStyle(
    fontSize: 12.sp,
    color: AppColors.grayColor,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font24primaryColorBold = TextStyle(
    fontSize: 24.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font32primaryColorBold = TextStyle(
    fontSize: 32.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font13subTextColorRegular = TextStyle(
    fontSize: 13.sp,
    color: AppColors.subTextColor,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font14subTextColorRegular = TextStyle(
    fontSize: 14.sp,
    color: AppColors.subTextColor,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font14hintColorRegular = TextStyle(
    fontSize: 14.sp,
    color: AppColors.hintColor,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font16whiteColorSemiBold = TextStyle(
    fontSize: 16.sp,
    color: AppColors.whiteColor,
    fontWeight: FontWeightHelper.medium,
  );
}