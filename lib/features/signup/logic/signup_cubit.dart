import 'package:bloc/bloc.dart';
import 'package:doctorna/features/signup/data/models/signup_request_body.dart';
import 'package:doctorna/features/signup/data/repository/signup_repository.dart';
import 'package:doctorna/features/signup/logic/signup_state.dart';
import 'package:flutter/material.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepository _signupRepository;

  SignupCubit(this._signupRepository) : super(SignupState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmationPasswordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignupState() async {
    emit(const SignupState.loading());
    final response = await _signupRepository.signup(SignupRequestBody(
      name: nameController.text,
      email: emailController.text,
      phone: phoneNumberController.text,
      password: passwordController.text,
      passwordConfirmation: confirmationPasswordController.text,
      gender: 0,
    ));
    response.when(
      success: (signupResponse) {
        emit(SignupState.success(signupResponse));
      },
      failure: (error) {
        emit(SignupState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
