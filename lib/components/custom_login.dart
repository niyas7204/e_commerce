import 'package:e_commerce/controllers/authentication_bloc/user_authentication_bloc.dart';
import 'package:e_commerce/core/enums/enums.dart';
import 'package:e_commerce/view/utils/constants/sizes.dart';
import 'package:e_commerce/view/utils/custom_formfield.dart';
import 'package:e_commerce/view/utils/custom_painter/login_box.dart';
import 'package:e_commerce/view/utils/custom_texts_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomLogin extends StatelessWidget {
  const CustomLogin({
    super.key,
    required this.formKey,
    required this.labels,
    required this.controllers,
  });

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
            painter: LoginPainter(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTextSyles.header1('Log In'),
                        GestureDetector(
                            onTap: () {
                              BlocProvider.of<UserAuthenticationBloc>(context)
                                  .add(UserAuthenticationEvent.authSelection(
                                      controllers: controllers,
                                      selection: AuthSelection.signup));
                            },
                            child: SizedBox(
                              child: CustomTextSyles.header1('Sign Up'),
                            )),
                      ],
                    ),
                  ),
                  Center(
                    child: Form(
                        key: formKey,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: labels.length,
                            itemBuilder: (context, index) => CustomTextField(
                                label: labels[index],
                                controller: controllers[index],
                                formKey: formKey))),
                  ),
                  SpaceSized.space10H,
                  ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<UserAuthenticationBloc>(context)
                            .add(UserAuthenticationEvent.userLogin(
                          userName: controllers[0].text,
                          password: controllers[1].text,
                        ));
                      },
                      child: CustomTextSyles.labelText('Log In')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
