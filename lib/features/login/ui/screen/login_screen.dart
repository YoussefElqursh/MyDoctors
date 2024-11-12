import 'package:doctorna/core/helpers/spacing_helper.dart';
import 'package:doctorna/core/theme/fonts.dart';
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
