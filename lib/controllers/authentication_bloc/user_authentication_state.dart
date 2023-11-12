part of 'user_authentication_bloc.dart';

@freezed
class UserAuthenticationState with _$UserAuthenticationState {
  const factory UserAuthenticationState(
      {required StateResponse<String>? signupState,
      required StateResponse<String>? sentOtp,
      required StateResponse<String?>? logedUser,
      required UserAuthModel? userAuthData,
      required StateResponse<String>? loginState,
      required StateResponse userLogout,
      required AuthSelection? authSelection}) = userAuthenticationState;
  factory UserAuthenticationState.initial() => userAuthenticationState(
      userLogout: StateResponse.initial(),
      logedUser: StateResponse.initial(),
      userAuthData: null,
      sentOtp: StateResponse.initial(),
      signupState: StateResponse.initial(),
      loginState: StateResponse.initial(),
      authSelection: AuthSelection.login);
}
