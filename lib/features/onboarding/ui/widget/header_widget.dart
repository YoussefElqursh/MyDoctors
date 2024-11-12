import 'package:doctorna/core/helpers/spacing_helper.dart';
import 'package:doctorna/core/theme/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildHeader extends StatelessWidget {
  const BuildHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svg/logo.svg'),
        horizontalSpace(10),
        Text(
          'Docdoc',
          style: TextStyles.font24TextColorBold,
        ),
      ],
    );
  }
}