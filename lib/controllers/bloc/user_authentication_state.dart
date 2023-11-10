part of 'user_authentication_bloc.dart';

@freezed
class UserAuthenticationState with _$UserAuthenticationState {
  const factory UserAuthenticationState(
      {required StateResponse<String>? signupState,
      required StateResponse<String>? sentOtp,
      required UserAuthModel? userAuthData,
      required StateResponse<String>? loginState,
      required AuthSelection? authSelection}) = userAuthenticationState;
  factory UserAuthenticationState.initial() => userAuthenticationState(
      userAuthData: null,
      sentOtp: StateResponse.initial(),
      signupState: StateResponse.initial(),
      loginState: StateResponse.initial(),
      authSelection: AuthSelection.login);
}
