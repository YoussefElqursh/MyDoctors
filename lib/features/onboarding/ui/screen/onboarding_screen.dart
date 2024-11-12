import 'package:doctorna/core/helpers/extension.dart';
import 'package:doctorna/core/helpers/spacing_helper.dart';
import 'package:doctorna/core/routing/routes.dart';
import 'package:doctorna/core/theme/fonts.dart';
import 'package:doctorna/core/widget/btn_widget.dart';
import 'package:doctorna/features/onboarding/ui/widget/body_widget.dart';
import 'package:doctorna/features/onboarding/ui/widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const BuildHeader(),
                verticalSpace(30),
                const BuildBody(),
                verticalSpace(18),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style: TextStyles.font13subTextColorRegular,
                        textAlign: TextAlign.center,
                      ),
                      verticalSpace(30),
                      BtnWidget(
                        label: 'Get Started',
                        onPressed: () {
                          context.pushNamed(Routes.loginScreen);
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
