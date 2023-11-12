import 'package:e_commerce/core/helpers/state_response_handler.dart';

abstract class UserAuthenticationServices {
  Future<StateResponse<String?>>? userSignup(
      {required String email,
      required String password,
      required String userName});
  Future<StateResponse<String?>>? getUserEmail({required String userName});
  Future<StateResponse<bool>>? checkUserName({required String userName});
  Future<StateResponse<String?>>? userLogin(
      {required String email, required String password});
  Future<StateResponse<String?>>? addUser(
      {required String email,
      required String userName,
      required String userId});
  Future<StateResponse> userLogout();
  Future<StateResponse<String?>>? sentOtp({required String email});
  Future<StateResponse<String?>> checkLogin();
  Future<StateResponse<String?>>? verifyOtp({required String otp});
}
