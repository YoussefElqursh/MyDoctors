import 'package:doctorna/features/login/data/models/login_request_body.dart';
import 'package:doctorna/features/login/data/repository/login_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctorna/features/login/logic/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _loginRepository;
  LoginCubit(this._loginRepository) : super(const LoginState.initial());

  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;

  void emitLoginState(LoginRequestBody loginRequestBody)async{
    emit(const LoginState.loading());
    final response = await _loginRepository.login(loginRequestBody);
    response.when(
      success: (loginResponse){
        emit(LoginState.success(loginResponse));
      },
      failure: (error){
        emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
