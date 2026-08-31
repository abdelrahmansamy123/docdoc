import 'package:bloc/bloc.dart';
import 'package:doctor/core/networking/api_result.dart';
import 'package:doctor/features/login/data/model/login_request_body.dart';
import 'package:doctor/features/login/data/repo/login_repo.dart';
import 'package:doctor/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);
    response.when(
      success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(error.apiErrorModel.message ?? "Unknown error"));
      },
    );
  }
}
