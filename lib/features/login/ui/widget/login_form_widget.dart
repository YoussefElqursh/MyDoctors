import 'package:doctorna/core/helpers/extension.dart';
import 'package:doctorna/core/helpers/spacing_helper.dart';
import 'package:doctorna/core/routing/routes.dart';
import 'package:doctorna/core/theme/colors.dart';
import 'package:doctorna/core/theme/fonts.dart';
import 'package:doctorna/core/widget/btn_widget.dart';
import 'package:doctorna/core/widget/text_form_field_widget.dart';
import 'package:doctorna/features/login/logic/login_cubit.dart';
import 'package:doctorna/features/login/ui/widget/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  bool isObscureText = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumbers = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    emailController = context.read<LoginCubit>().emailController;
    passwordController = context.read<LoginCubit>().passwordController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextFormFieldWidget(
            controller: context.read<LoginCubit>().emailController,
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
            validator: (value){
              if(value == null || value.isEmpty){
                return 'Please, Enter a valid Email';
              }
              return null;
            },
          ),
          verticalSpace(20),
          TextFormFieldWidget(
            controller: context.read<LoginCubit>().passwordController,
            hintText: 'Password',
            keyboardType: TextInputType.visiblePassword,
            obscureText: isObscureText,
            validator: (value){
              if(value == null || value.isEmpty){
                return 'Please, Enter a valid Password';
              }
              return null;
            },
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
          PasswordValidations(hasLowerCase: hasLowerCase, hasUpperCase: hasUpperCase, hasSpecialCharacters: hasSpecialCharacters, hasNumbers: hasNumbers, hasMinLength: hasMinLength,),
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
        ],
      ),
    );
  }
}
