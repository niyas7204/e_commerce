part of 'user_authentication_bloc.dart';

@freezed
class UserAuthenticationEvent with _$UserAuthenticationEvent {
  const factory UserAuthenticationEvent.userSignUp({required String otp}) =
      _userSignUp;
  const factory UserAuthenticationEvent.userLogin(
      {required String email, required String password}) = _userLogin;
  const factory UserAuthenticationEvent.addUser(
      {required String userName, required String userId}) = _addUser;
  const factory UserAuthenticationEvent.sentOtp({
    required String email,
    required String password,
    required String username,
  }) = _sentOtp;
}
