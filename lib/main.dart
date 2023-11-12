import 'package:e_commerce/controllers/add_product/add_product_bloc.dart';
import 'package:e_commerce/controllers/authentication_bloc/user_authentication_bloc.dart';
import 'package:e_commerce/controllers/get_products/getproduct_bloc.dart';
import 'package:e_commerce/data/Dataprovider/get_products.dart';
import 'package:e_commerce/data/Dataprovider/upload_post_implimentation.dart';
import 'package:e_commerce/data/Dataprovider/user_auth_implimentation.dart';
import 'package:e_commerce/firebase_options.dart';
import 'package:e_commerce/graphql/client/graphql_client.dart';

import 'package:e_commerce/view/pages/splahscreen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GraphQlclientgenaration.init();
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
            create: (context) => AddProductBloc(UploadProductImplimentation()),
          ),
          BlocProvider(
            create: (context) =>
                UserAuthenticationBloc(UserAuthImplimentation()),
          ),
          BlocProvider(
            create: (context) => GetproductBloc(
                GetProductImplimentation(), UploadProductImplimentation()),
          ),
        ],
        child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const SplashScreen()));
  }
}
