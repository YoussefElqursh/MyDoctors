import 'package:doctorna/core/helpers/spacing_helper.dart';
import 'package:doctorna/core/theme/fonts.dart';
import 'package:doctorna/core/widget/btn_widget.dart';
import 'package:doctorna/features/signup/logic/signup_cubit.dart';
import 'package:doctorna/features/signup/ui/widget/already_have_anccount.dart';
import 'package:doctorna/features/signup/ui/widget/signup_form.dart';
import 'package:doctorna/features/signup/ui/widget/signup_lisetner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const SignupForm(),
                    verticalSpace(40),
                    BtnWidget(
                      label: "Create Account",
                      style: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    verticalSpace(16),
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
                    verticalSpace(30),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupState();
    }
  }
}