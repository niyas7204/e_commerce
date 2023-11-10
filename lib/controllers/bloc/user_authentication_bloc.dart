import 'package:bloc/bloc.dart';
import 'package:e_commerce/core/enums/enums.dart';
import 'package:e_commerce/core/helpers/state_response_handler.dart';
import 'package:e_commerce/data/models/user_auth_model.dart';
import 'package:e_commerce/data/repository/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_authentication_event.dart';
part 'user_authentication_state.dart';
part 'user_authentication_bloc.freezed.dart';

class UserAuthenticationBloc
    extends Bloc<UserAuthenticationEvent, UserAuthenticationState> {
  UserAuthenticationServices authenticationServices;
  UserAuthenticationBloc(this.authenticationServices)
      : super(UserAuthenticationState.initial()) {
    on<_sentOtp>((event, emit) async {
      emit(state.copyWith(
        sentOtp: StateResponse.loading(),
      ));
      final response = await authenticationServices.sentOtp(email: event.email);
      if (response!.status == StateStatus.success) {
        emit(state.copyWith(sentOtp: StateResponse.success(response.data)));
      } else if (response.status == StateStatus.error) {
        emit(state.copyWith(
            sentOtp: StateResponse.error(response.errorMessage)));
      }
    });
    on<_userSignUp>((event, emit) async {
      emit(state.copyWith(signupState: StateResponse.loading()));
      final response = await authenticationServices.verifyOtp(otp: event.otp);
    });
  }
}
