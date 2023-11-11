import 'package:e_commerce/components/alert_diologs.dart';
import 'package:e_commerce/controllers/authentication_bloc/user_authentication_bloc.dart';
import 'package:e_commerce/core/enums/enums.dart';
import 'package:e_commerce/view/pages/home.dart';
import 'package:e_commerce/view/utils/constants/sizes.dart';
import 'package:e_commerce/view/utils/custom_texts_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:timer_count_down/timer_count_down.dart';

class VerifyOTP extends StatelessWidget {
  const VerifyOTP({super.key});

  @override
  Widget build(BuildContext context) {
    final AlertDiologeWidgets alertcontroller = Get.put(AlertDiologeWidgets());
    final sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: BlocConsumer<UserAuthenticationBloc, UserAuthenticationState>(
          listener: (context, state) {
            if (state.signupState!.status == StateStatus.success) {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => HomePage(),
              ));
            } else if (state.signupState!.status == StateStatus.error) {
              alertcontroller.warningAlert(state.signupState!.errorMessage!);
            }
          },
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextSyles.header1("Enter OTP"),
                  SpaceSized.space10H,
                  CustomTextSyles.text15("Enter the otp sent to you mail"),
                  SpaceSized.space5H,
                  Row(
                    children: [
                      CustomTextSyles.text15("otp expires on"),
                      Countdown(
                        seconds: 60,
                        build: (context, time) {
                          return Text(time.toString());
                        },
                        interval: const Duration(milliseconds: 1000),
                        onFinished: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                  OTPTextField(
                    length: 4,
                    width: sizeWidth * .9,
                    fieldWidth: 70,
                    style: const TextStyle(fontSize: 20),
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.box,
                    onCompleted: (otp) {
                      BlocProvider.of<UserAuthenticationBloc>(context).add(
                          UserAuthenticationEvent.userSignUp(
                              otp: otp, userAuthData: state.userAuthData!));
                    },
                  )
                ],
              ),
            );
          },
        ),
      )),
    );
  }
}
