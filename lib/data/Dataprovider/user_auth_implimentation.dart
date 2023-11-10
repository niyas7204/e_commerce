import 'dart:io';

import 'package:e_commerce/core/helpers/state_response_handler.dart';
import 'package:e_commerce/data/repository/repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:email_otp/email_otp.dart';

class UserAuthImplimentation extends UserAuthenticationServices {
  EmailOTP otpAuth = EmailOTP();
  @override
  Future<StateResponse<String?>>? addUser(
      {required String email,
      required String userName,
      required String userId}) {
    throw UnimplementedError();
  }

  @override
  Future<StateResponse<String?>>? userSignup(
      {required String email, required String password}) async {
    try {
      final response = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return StateResponse.success(response.user!.uid);
    } on FirebaseAuthException catch (error) {
      if (error.code == 'weak-password') {
        return StateResponse.error('weak-password');
      }
      if (error.code == 'email-already-in-use') {
        return StateResponse.error('email-already-in-use');
      }
    } on SocketException {
      return StateResponse.error('Please check your connection');
    } catch (e) {
      return StateResponse.error('Failed to Sign Up');
    }
    throw UnimplementedError();
  }

  @override
  Future<StateResponse<String?>>? userLogin(
      {required String email, required String password}) {
    // TODO: implement userLogin
    throw UnimplementedError();
  }

  @override
  Future<StateResponse<String?>>? sentOtp({required String email}) async {
    try {
      otpAuth.setConfig(
          appEmail: "mohammadniyas7204@gmail.com",
          appName: "TheCart",
          userEmail: email,
          otpLength: 4,
          otpType: OTPType.digitsOnly);
      final bool response = otpAuth.sendOTP();
      if (response) {
        return StateResponse.success('OTP has been sent');
      } else {
        return StateResponse.error('Failed to sent OTP');
      }
    } catch (e) {
      return StateResponse.error('Failed to sent OTP');
    }
  }

  @override
  Future<StateResponse<String?>>? verifyOtp({required String otp}) async {
    try {
      final bool result = await otpAuth.verifyOTP(otp: otp);
      if (result) {
        return StateResponse.success("Email verified Succesfully");
      } else {
        return StateResponse.error("Invalid Otp");
      }
    } catch (e) {
      return StateResponse.error("Email verification failed");
    }
  }
}
