import 'package:e_commerce/controllers/authentication_bloc/user_authentication_bloc.dart';
import 'package:e_commerce/core/enums/enums.dart';
import 'package:e_commerce/view/utils/constants/sizes.dart';
import 'package:e_commerce/view/utils/custom_formfield.dart';
import 'package:e_commerce/view/utils/custom_painter/signup_box.dart';
import 'package:e_commerce/view/utils/custom_texts_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignUp extends StatelessWidget {
  const CustomSignUp({
    super.key,
    required this.formKey,
    required this.labels,
    required this.controllers,
    required this.state,
  });
  final UserAuthenticationState state;
  final GlobalKey<FormState> formKey;
  final List<String> labels;
  final List<TextEditingController> controllers;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(150, 96, 125, 139),
          borderRadius: BorderRadius.circular(27)),
      child: Stack(
        children: [
          CustomPaint(
            painter: SignUpPainter(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              BlocProvider.of<UserAuthenticationBloc>(context)
                                  .add(UserAuthenticationEvent.authSelection(
                                      controllers: controllers,
                                      selection: AuthSelection.login));
                            },
                            child: CustomTextSyles.header1('Log In')),
                        CustomTextSyles.header1('Sign Up')
                      ],
                    ),
                  ),
                  SpaceSized.space20H,
                  SpaceSized.space5H,
                  Column(
                    children: [
                      Form(
                          key: formKey,
                          child: ListView.builder(
                              physics: const ScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: labels.length,
                              itemBuilder: (context, index) => CustomTextField(
                                  label: labels[index],
                                  controller: controllers[index],
                                  formKey: formKey))),
                      SpaceSized.space10H,
                      ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<UserAuthenticationBloc>(context)
                                .add(UserAuthenticationEvent.sentOtp(
                              controllers: controllers,
                            ));
                          },
                          child: CustomTextSyles.labelText('Sign Up')),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
