import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:e_commerce/components/alert_diologs.dart';
import 'package:e_commerce/core/enums/enums.dart';
import 'package:e_commerce/core/helpers/state_response_handler.dart';
import 'package:e_commerce/data/models/user_auth_model.dart';
import 'package:e_commerce/data/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'user_authentication_event.dart';
part 'user_authentication_state.dart';
part 'user_authentication_bloc.freezed.dart';

class UserAuthenticationBloc
    extends Bloc<UserAuthenticationEvent, UserAuthenticationState> {
  final AlertDiologeWidgets alertcontroller = Get.put(AlertDiologeWidgets());
  UserAuthenticationServices authenticationServices;

  UserAuthenticationBloc(this.authenticationServices)
      : super(UserAuthenticationState.initial()) {
    on<_sentOtp>((event, emit) async {
      log('sent otp bloc');
      final userData = UserAuthModel(
          email: event.controllers[1].text.trim(),
          username: event.controllers[0].text.trim(),
          password: event.controllers[2].text.trim());
      for (var controller in event.controllers) {
        if (controller.text.isEmpty) {
          return alertcontroller.warningAlert('Fields shouldnot be empty');
        }
      }
      if (event.controllers[2].text.trim() !=
          event.controllers[3].text.trim()) {
        log('pass wrong ');
        return alertcontroller.warningAlert('Password not match');
      }
      emit(state.copyWith(
          sentOtp: StateResponse.loading(), userAuthData: userData));
      final response = await authenticationServices.sentOtp(
          email: event.controllers[1].text.trim());
      if (response!.status == StateStatus.success) {
        log('sent otp bloc success');
        emit(state.copyWith(sentOtp: StateResponse.success(response.data)));
      } else if (response.status == StateStatus.error) {
        log('fail');
        emit(state.copyWith(
            sentOtp: StateResponse.error(response.errorMessage)));
      }
    });
    on<_userSignUp>((event, emit) async {
      emit(state.copyWith(signupState: StateResponse.loading()));
      final response = await authenticationServices.verifyOtp(otp: event.otp);
      if (response!.status == StateStatus.success) {
        final sighUpresponse = await authenticationServices.userSignup(
            email: event.userAuthData.email,
            password: event.userAuthData.password,
            userName: event.userAuthData.username);
        if (sighUpresponse!.status == StateStatus.success) {
          emit(state.copyWith(
              signupState: StateResponse.success(sighUpresponse.data)));
        } else if (sighUpresponse.status == StateStatus.error) {
          emit(state.copyWith(
              signupState: StateResponse.error(sighUpresponse.errorMessage)));
        }
      } else if (response.status == StateStatus.error) {
        emit(state.copyWith(
            signupState: StateResponse.error(response.errorMessage)));
      }
    });
    on<_authSelection>((event, emit) {
      for (var controller in event.controllers) {
        controller.clear();
      }
      emit(state.copyWith(authSelection: event.selection));
    });
  }
}
