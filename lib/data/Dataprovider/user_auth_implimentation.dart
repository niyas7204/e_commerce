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
       await otpAuth.setConfig(
          appEmail: "mohammadniyas7204@gmail.com",
          appName: "TheCart",
          userEmail: email,
          otpLength: 4,
          otpType: OTPType.digitsOnly);

      final bool response = await otpAuth.sendOTP();
       if (response) {
('sent');
        return StateResponse.success('OTP has been sent');
      } else {
         return StateResponse.error('Failed to sent OTP');
      }
    } on NetworkException {
      return StateResponse.error('Network error');
    } catch (e) {
       return StateResponse.error('Failed to sent OTP');
    }
  }
  //verify the otp

  @override
  Future<StateResponse<String?>>? verifyOtp({required String otp}) async {
    try {
      final bool result = await otpAuth.verifyOTP(otp: otp);
      if (result) {
         return StateResponse.success("Email verified Succesfully");
      } else {
         return StateResponse.error("Invalid Otp");
      }
    } on NetworkException {
      return StateResponse.error('Network error');
    } catch (e) {
      return StateResponse.error("Email verification failed");
    }
  }

  @override
  Future<StateResponse<String?>>? getUserEmail(
      {required String userName}) async {
    try {
      final getUser = GetUserEamilQuery(userName);
      final mutationOption =
          MutationOptions(document: gql(getUser.getuserEMailQuery));
      final getResponse =
          await GraphQlclientgenaration.graphQLClient.mutate(mutationOption);
      final String email = getResponse.data!["users"][0]["email"];
      return StateResponse.success(email);
    } on FirebaseAuthException catch (e) {
      return StateResponse.error(e.message);
    } on NetworkException {
      return StateResponse.error('Network error');
    } catch (e) {
       return StateResponse.error('User not found');
    }
  }

  @override
  Future<StateResponse<bool>>? checkUserName({required String userName}) async {
    try {
      final checkUser = CheckUserName(userName);
      final mutationOption =
          MutationOptions(document: gql(checkUser.checkUserNameQuery));
      final getResponse =
          await GraphQlclientgenaration.graphQLClient.mutate(mutationOption);
      List users = getResponse.data!["users"];
      bool check = users.isEmpty;
      if (check) {
        return StateResponse.success(check);
      } else {
        return StateResponse.error('User name exist Try onother one');
      }
    } on NetworkException {
      return StateResponse.error('Network error');
    } catch (e) {
       return StateResponse.error('Failed fecth user data');
    }
  }

  @override
  Future<StateResponse> userLogout() async {
    try {
      await FirebaseAuth.instance.signOut();

      return StateResponse.success(null);
    } catch (e) {
      return StateResponse.error('SignOut Failed');
    }
  }

  //check user login or not
  @override
  Future<StateResponse<String?>> checkLogin() async {
    try {
      User? currentUser = FirebaseAuth.instance.currentUser;

      if (currentUser != null) {
        return StateResponse.success(currentUser.uid);
      } else {
        return StateResponse.error('User not loged');
      }
    } catch (e) {
      return StateResponse.error('Error on checking login');
    }
  }
}
