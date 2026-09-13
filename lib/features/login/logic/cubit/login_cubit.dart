import 'package:bloc/bloc.dart';
import 'package:doctor/core/helper/constants.dart';
import 'package:doctor/core/helper/shared_pref_helper.dart';
import 'package:doctor/core/networking/api_result.dart';
import 'package:doctor/core/networking/dio_factory.dart';
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

  void emitLoginState() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) async {
        await saveUserToken(loginResponse.userData?.token ?? "");
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(error.apiErrorModel.message ?? "Unknown error"));
      },
    );
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
