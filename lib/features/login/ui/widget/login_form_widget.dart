import 'package:doctorna/core/helpers/extension.dart';
import 'package:doctorna/core/helpers/spacing_helper.dart';
import 'package:doctorna/core/routing/routes.dart';
import 'package:doctorna/core/theme/colors.dart';
import 'package:doctorna/core/theme/fonts.dart';
import 'package:doctorna/core/widget/btn_widget.dart';
import 'package:doctorna/core/widget/text_form_field_widget.dart';
import 'package:flutter/material.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextFormFieldWidget(
            controller: emailController,
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
          ),
          verticalSpace(20),
          TextFormFieldWidget(
            controller: passwordController,
            hintText: 'Password',
            keyboardType: TextInputType.visiblePassword,
            obscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: (){
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility, size: 24,
              ),
            ),
          ),
          verticalSpace(7),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Checkbox(
                    activeColor: AppColors.primaryColor,
                    checkColor: AppColors.whiteColor,
                    side: BorderSide(color: AppColors.borderColor),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: false,
                    onChanged: (value) {},
                  ),
                  verticalSpace(5),
                  Text(
                    'Remember me',
                    style: TextStyles.font12GrayColorRegular,
                  ),
                ],
              ),
              GestureDetector(
                child: Text(
                  'Forgot Password?',
                  style: TextStyles.font12GrayColorRegular.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(35),
          BtnWidget(
            onPressed: () => context.pushNamed(Routes.loginScreen),
            label: 'Login',
          ),
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
                onPressed: () {},
                child: Text(
                  'Signup',
                  style: TextStyles.font16whiteColorSemiBold
                      .copyWith(color: AppColors.primaryColor),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
