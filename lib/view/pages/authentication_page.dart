import 'dart:developer';

import 'package:e_commerce/components/alert_diologs.dart';
import 'package:e_commerce/components/custom_login.dart';
import 'package:e_commerce/components/custom_signup.dart';
import 'package:e_commerce/controllers/authentication_bloc/user_authentication_bloc.dart';
import 'package:e_commerce/core/enums/enums.dart';
import 'package:e_commerce/view/pages/home.dart';
import 'package:e_commerce/view/pages/otp_verification.dart';
import 'package:e_commerce/view/utils/constants/logo.dart';
import 'package:e_commerce/view/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class AuthenticatinPage extends StatelessWidget {
  const AuthenticatinPage({super.key});

  @override
  Widget build(BuildContext context) {
    log('login bild');
    AlertDiologeWidgets alertcontroller = Get.put(AlertDiologeWidgets());
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    List<TextEditingController> logincontrollers = [
      emailcontroller,
      passwordcontroller,
    ];
    TextEditingController usernamecontroller = TextEditingController();
    TextEditingController confirmPasswordcontroller = TextEditingController();
    List<TextEditingController> signUpcontrollers = [
      usernamecontroller,
      emailcontroller,
      passwordcontroller,
      confirmPasswordcontroller
    ];
    final formKey = GlobalKey<FormState>();
    var signUPlabels = ['User Name', 'Email', 'Password', 'Confirm Password'];

    var loginlabels = ['Email', 'Password'];
    return BlocConsumer<UserAuthenticationBloc, UserAuthenticationState>(
      listener: (context, state) {
        if (state.loginState!.status == StateStatus.success) {
          log('login listen'); //when login success navigate to home page
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
              (route) => false);
        } else if (state.loginState!.status == StateStatus.error) {
          // if login is failed show warnig message

          alertcontroller.warningAlert(state.loginState!.errorMessage!);
        } else if (state.sentOtp!.status == StateStatus.success) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const VerifyOTP()));
        } else if (state.sentOtp!.status == StateStatus.success) {
          alertcontroller.warningAlert(state.sentOtp!.errorMessage!);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
              child: Stack(
            children: [
              //show when loading indicater when login function works
              state.loginState!.status == StateStatus.loading
                  ? Container(
                      color: const Color.fromARGB(209, 49, 49, 49),
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : const SizedBox(),
              state.sentOtp!.status == StateStatus.loading
                  ? Container(
                      color: const Color.fromARGB(209, 49, 49, 49),
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : const SizedBox(),
              SingleChildScrollView(
                  child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                color: Colors.blueGrey.shade100.withOpacity(.3),
                child: Column(
                  children: [
                    AppLogo.logo,
                    state.authSelection == AuthSelection.login
                        ? CustomLogin(
                            formKey: formKey,
                            labels: loginlabels,
                            controllers: logincontrollers)
                        : CustomSignUp(
                            formKey: formKey,
                            labels: signUPlabels,
                            controllers: signUpcontrollers,
                            state: state,
                          ),
                    SpaceSized.space10H,
                    SpaceSized.space10H,
                  ],
                ),
              ))
            ],
          )),
        );
      },
    );
  }
}
