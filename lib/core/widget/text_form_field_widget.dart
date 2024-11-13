import 'package:doctorna/core/theme/colors.dart';
import 'package:doctorna/core/theme/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;

  const TextFormFieldWidget({
    super.key,
    required this.controller,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.style,
    this.hintStyle,
    required this.hintText,
    this.keyboardType,
    this.suffixIcon,
    this.validator,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: style ?? TextStyles.font14TextColorMedium,
      keyboardType: keyboardType ?? TextInputType.text,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        isDense: true,
        fillColor: AppColors.borderColor,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 18.0.h),
        hintStyle: TextStyles.font14hintColorRegular,
        suffixIcon: suffixIcon,
        focusedBorder: focusedBorder ?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            width: 1.3,
          ),
        ),
        enabledBorder: enabledBorder ?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(
            color: AppColors.borderColor,
            width: 1.3,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
        ),
      ),
    );
  }
}
