import 'dart:developer';
import 'dart:io';

import 'package:e_commerce/core/helpers/state_response_handler.dart';
import 'package:e_commerce/data/repository/repository.dart';
import 'package:e_commerce/graphql/client/graphql_client.dart';
import 'package:e_commerce/graphql/query/add_user_query.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:email_otp/email_otp.dart';

import 'package:graphql/client.dart';

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
      {required String email,
      required String userName,
      required String password}) async {
    try {
      final response = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      try {
        final addUsermutation =
            AddUserQuery(response.user!.uid, userName, email);
        final mutationOption =
            MutationOptions(document: gql(addUsermutation.addUserMutation));

        await GraphQlclientgenaration.graphQLClient.mutate(mutationOption);
        return StateResponse.success('SignUp succcess');
      } catch (e) {
        log("errpr $e");
        return StateResponse.error('SignUp failed');
      }
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
      {required String email, required String password}) async {
    try {
      UserCredential credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      String uid = credential.user!.uid;
      return StateResponse.success(uid);
    } on NetworkException {
      return StateResponse.error('Network error');
    } on FirebaseAuthException {
      return StateResponse.error('Email and Password not match');
    } catch (e) {
      return StateResponse.error('login failed try later..');
    }
  }

  @override
  Future<StateResponse<String?>>? sentOtp({required String email}) async {
    try {
      log(email);
      await otpAuth.setConfig(
          appEmail: "mohammadniyas7204@gmail.com",
          appName: "TheCart",
          userEmail: email,
          otpLength: 4,
          otpType: OTPType.digitsOnly);

      final bool response = await otpAuth.sendOTP();
      log(response.toString());
      if (response) {
        log('sent');
        return StateResponse.success('OTP has been sent');
      } else {
        log('Failed to sent OTP');
        return StateResponse.error('Failed to sent OTP');
      }
    } catch (e) {
      log('sent otp erro $e');
      return StateResponse.error('Failed to sent OTP');
    }
  }
  //verify the otp

  @override
  Future<StateResponse<String?>>? verifyOtp({required String otp}) async {
    try {
      final bool result = await otpAuth.verifyOTP(otp: otp);
      if (result) {
        log('verify s');
        return StateResponse.success("Email verified Succesfully");
      } else {
        log('verify f');
        return StateResponse.error("Invalid Otp");
      }
    } catch (e) {
      return StateResponse.error("Email verification failed");
    }
  }
}
