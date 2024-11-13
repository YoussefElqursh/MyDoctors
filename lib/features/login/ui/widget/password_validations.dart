import 'package:doctorna/core/helpers/font_weight_helper.dart';
import 'package:doctorna/core/helpers/spacing_helper.dart';
import 'package:doctorna/core/theme/colors.dart';
import 'package:doctorna/core/theme/fonts.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumbers;
  final bool hasMinLength;

  const PasswordValidations(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialCharacters,
      required this.hasNumbers,
      required this.hasMinLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        buildValidationsOfPassword('at least 1 lowercase letter', hasLowerCase),
        verticalSpace(2),
        buildValidationsOfPassword('at least 1 uppercase letter', hasUpperCase),
        verticalSpace(2),
        buildValidationsOfPassword('at least 1 special character letter', hasSpecialCharacters),
        verticalSpace(2),
        buildValidationsOfPassword('at least 1 number letter', hasNumbers),
        verticalSpace(2),
        buildValidationsOfPassword('at least 8 character long', hasMinLength),
      ],
    );
  }

  Widget buildValidationsOfPassword(String text, bool hasValidateArg) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: AppColors.grayColor,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font24TextColorBold.copyWith(
            fontSize: 13,
            fontWeight: FontWeightHelper.regular,
            decoration: hasValidateArg ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2.0,
            color: hasValidateArg ? AppColors.grayColor : AppColors.textColor,
          ),
        ),
      ],
    );
  }
}
