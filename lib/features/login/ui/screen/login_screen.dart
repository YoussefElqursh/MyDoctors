import 'package:doctorna/core/helpers/extension.dart';
import 'package:doctorna/core/helpers/spacing_helper.dart';
import 'package:doctorna/core/routing/routes.dart';
import 'package:doctorna/core/theme/colors.dart';
import 'package:doctorna/core/theme/fonts.dart';
import 'package:doctorna/features/login/ui/widget/login_bloc_listener.dart';
import 'package:doctorna/features/login/ui/widget/login_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 30.0.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24primaryColorBold,),
                verticalSpace(10),
                Text('We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.', style: TextStyles.font14subTextColorRegular.copyWith(height: 1.4),),
                verticalSpace(35),
                LoginFormWidget(),
                verticalSpace(35),
                Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    text: 'By logging, you agree to our',
                    style: TextStyles.font14subTextColorRegular.copyWith(fontSize: 12),
                    children: [
                      TextSpan(
                          text: ' Terms & Conditions ',
                          style: TextStyles.font14TextColorMedium),
                      TextSpan(text: 'and'),
                      TextSpan(
                          text: ' PrivacyPolicy',
                          style: TextStyles.font14TextColorMedium),
                      TextSpan(text: '.'),
                    ],
                  ),
                ),
                verticalSpace(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account yet?',
                      style: TextStyles.font12GrayColorRegular
                          .copyWith(color: AppColors.textColor, fontSize: 11),
                    ),
                    TextButton(
                      onPressed: () {
                        context.pushNamed(Routes.signupScreen);
                      },
                      child: Text(
                        'Signup',
                        style: TextStyles.font16whiteColorSemiBold
                            .copyWith(color: AppColors.primaryColor, fontSize: 11),
                      ),
                    ),
                  ],
                ),
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
