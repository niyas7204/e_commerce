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
        return alertcontroller.warningAlert('Password not match');
      }
      final checkUser = await authenticationServices.checkUserName(
          userName: event.controllers[0].text.trim());
      if (checkUser!.status == StateStatus.success) {
        emit(state.copyWith(
            sentOtp: StateResponse.loading(), userAuthData: userData));
        final response = await authenticationServices.sentOtp(
            email: event.controllers[1].text.trim());
        if (response!.status == StateStatus.success) {
          emit(state.copyWith(sentOtp: StateResponse.success(response.data)));
          emit(state.copyWith(
            sentOtp: StateResponse.initial(),
          ));
        } else if (response.status == StateStatus.error) {
          emit(state.copyWith(
              sentOtp: StateResponse.error(response.errorMessage)));
        }
      } else {
        emit(state.copyWith(
            sentOtp: StateResponse.error(checkUser.errorMessage)));
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
    on<_userLogin>((event, emit) async {
      emit(state.copyWith(loginState: StateResponse.loading()));
      final email =
          await authenticationServices.getUserEmail(userName: event.userName);
      if (email!.status == StateStatus.success) {
        final userId = await authenticationServices.userLogin(
            email: email.data!, password: event.password);

        if (userId!.status == StateStatus.success) {
          emit(state.copyWith(loginState: StateResponse.success(userId.data)));
        } else if (userId.status == StateStatus.error) {
          emit(state.copyWith(
              loginState: StateResponse.error(userId.errorMessage)));
          emit(state.copyWith(loginState: StateResponse.initial()));
        }
      } else if (email.status == StateStatus.error) {
        emit(state.copyWith(
            loginState: StateResponse.error(email.errorMessage)));
        emit(state.copyWith(loginState: StateResponse.initial()));
      }
    });
    on<_userLogout>((event, emit) async {
      bool confirmation = await alertcontroller.confirmAlert(
        'Are you sure want to logout',
      );
      if (confirmation) {
        emit(state.copyWith(userLogout: StateResponse.loading()));

        final result = await authenticationServices.userLogout();
        if (result.status == StateStatus.success) {
          emit(state.copyWith(userLogout: StateResponse.success(null)));
        } else if (result.status == StateStatus.error) {
          emit(state.copyWith(
              userLogout: StateResponse.error(result.errorMessage)));
        }
      }
    });
    //to check the loged user
    on<_checkUserLoged>((event, emit) async {
      emit(state.copyWith(logedUser: StateResponse.loading()));
      final user = await authenticationServices.checkLogin();

      if (user.status == StateStatus.success) {
        emit(state.copyWith(logedUser: StateResponse.success(user.data)));

        emit(state.copyWith(logedUser: StateResponse.initial()));
      } else if (user.status == StateStatus.error) {
        emit(state.copyWith(logedUser: StateResponse.error(user.errorMessage)));
      }
    });
  }
}
