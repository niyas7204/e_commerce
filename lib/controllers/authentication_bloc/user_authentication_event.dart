part of 'user_authentication_bloc.dart';

@freezed
class UserAuthenticationEvent with _$UserAuthenticationEvent {
  const factory UserAuthenticationEvent.userSignUp(
      {required String otp, required UserAuthModel userAuthData}) = _userSignUp;
  const factory UserAuthenticationEvent.userLogin(
      {required String email, required String password}) = _userLogin;
  const factory UserAuthenticationEvent.addUser(
      {required String userName, required String userId}) = _addUser;
  const factory UserAuthenticationEvent.sentOtp(
      {required List<TextEditingController> controllers}) = _sentOtp;
  const factory UserAuthenticationEvent.authSelection(
      {required List<TextEditingController> controllers,
      required AuthSelection selection}) = _authSelection;
}
