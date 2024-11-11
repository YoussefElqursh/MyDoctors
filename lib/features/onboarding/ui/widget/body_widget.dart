import 'package:doctorna/core/theme/colors.dart';
import 'package:doctorna/core/theme/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BuildBody extends StatelessWidget {
  const BuildBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset('assets/svg/background_svg.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.whiteColor,
                AppColors.whiteColor.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset('assets/images/onboarding_image.png'),
        ),
        Positioned(
          bottom: 30.0,
          left: 0.0,
          right: 0.0,
          child: Text(
            'Best Doctor Appointment App',
            style: TextStyles.font32primaryColorBold.copyWith(height: 1.4),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
