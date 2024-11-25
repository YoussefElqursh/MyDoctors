import 'package:doctorna/core/helpers/extension.dart';
import 'package:doctorna/core/helpers/font_weight_helper.dart';
import 'package:doctorna/core/routing/routes.dart';
import 'package:doctorna/core/theme/colors.dart';
import 'package:doctorna/core/theme/fonts.dart';
import 'package:doctorna/features/login/logic/login_cubit.dart';
import 'package:doctorna/features/login/logic/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (BuildContext context, LoginState<dynamic> state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) {
                return Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primaryColor,
                  ),
                );
              },
            );
          },
          success: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          error: (LoginError) {
            context.pop();
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  icon: Icon(
                    Icons.error,
                    color: Colors.red,
                    size: 32,
                  ),
                  content: Text(
                    LoginError,
                    style: TextStyles.font14subTextColorRegular
                        .copyWith(fontWeight: FontWeightHelper.medium),
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          context.pop();
                        },
                        child: Text(
                          'Got it',
                          style: TextStyles.font24TextColorBold.copyWith(
                            fontSize: 14,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeightHelper.semiBold,
                          ),
                        ))
                  ],
                );
              },
            );
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }
}
