import 'package:e_commerce/core/helpers/state_response_handler.dart';

abstract class UserAuthenticationServices {
  Future<StateResponse<String?>>? userSignup(
      {required String email, required String password});
  Future<StateResponse<String?>>? userLogin(
      {required String email, required String password});
  Future<StateResponse<String?>>? addUser(
      {required String email,
      required String userName,
      required String userId});
  Future<StateResponse>? sentOtp({required String email});
}
