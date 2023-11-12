import 'package:e_commerce/controllers/authentication_bloc/user_authentication_bloc.dart';
import 'package:e_commerce/core/enums/enums.dart';
import 'package:e_commerce/view/pages/all_products_page.dart';
import 'package:e_commerce/view/pages/authentication_page.dart';
import 'package:e_commerce/view/utils/constants/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<UserAuthenticationBloc>(context)
        .add(const UserAuthenticationEvent.checkUserLoged());
    return Scaffold(
      body: BlocListener<UserAuthenticationBloc, UserAuthenticationState>(
        listener: (context, authstate) {
          if (authstate.logedUser!.status == StateStatus.success) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => AllProducts(
                userId: authstate.logedUser!.data!,
              ),
            ));
          }
          if (authstate.logedUser!.status == StateStatus.error) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const AuthenticatinPage(),
            ));
          }
        },
        child: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppLogo.logo,
              SizedBox(
                height: 200,
                width: 200,
                child: LottieBuilder.asset(
                    "assets/animations/Animation - 1697727093744.json"),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
