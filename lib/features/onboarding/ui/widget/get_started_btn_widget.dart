import 'package:doctorna/core/helpers/extension.dart';
import 'package:doctorna/core/routing/routes.dart';
import 'package:doctorna/core/theme/colors.dart';
import 'package:doctorna/core/theme/fonts.dart';
import 'package:flutter/material.dart';

class GetStartedBtnWidget extends StatelessWidget {
  const GetStartedBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          AppColors.primaryColor,
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStatePropertyAll(
          Size(double.infinity, 52),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
        ),
      ),
      child: Text(
        'Get Started',
        style: TextStyles.font16whiteColorSemiBold,
      ),
    );
  }
}
