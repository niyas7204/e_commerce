import 'package:e_commerce/controllers/bloc/user_authentication_bloc.dart';
import 'package:e_commerce/data/Dataprovider/user_auth_implimentation.dart';
import 'package:e_commerce/data/repository/repository.dart';
import 'package:e_commerce/firebase_options.dart';
import 'package:e_commerce/view/pages/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserAuthenticationBloc(UserAuthImplimentation()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
