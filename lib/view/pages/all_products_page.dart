import 'package:e_commerce/components/alert_diologs.dart';
import 'package:e_commerce/controllers/authentication_bloc/user_authentication_bloc.dart';
import 'package:e_commerce/controllers/get_products/getproduct_bloc.dart';
import 'package:e_commerce/core/enums/enums.dart';
import 'package:e_commerce/view/components/product_card.dart';
import 'package:e_commerce/view/pages/add_products.dart';
import 'package:e_commerce/view/pages/authentication_page.dart';
import 'package:e_commerce/view/pages/products_bycatogery.dart';
import 'package:e_commerce/view/utils/constants/sizes.dart';
import 'package:e_commerce/view/utils/custom_texts_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class AllProducts extends StatelessWidget {
  final String userId;
  const AllProducts({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<GetproductBloc>(context)
        .add(GetproductEvent.getAllProducts(userId: userId));
    final AlertDiologeWidgets alertController = Get.put(AlertDiologeWidgets());
    return Scaffold(
      appBar: AppBar(
        title: CustomTextSyles.header1('TheCart'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child:
                BlocListener<UserAuthenticationBloc, UserAuthenticationState>(
              listener: (context, state) {
                if (state.userLogout.status == StateStatus.success) {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const AuthenticatinPage(),
                    ),
                    (route) => false,
                  );
                }
              },
              child: IconButton(
                  onPressed: () {
                    BlocProvider.of<UserAuthenticationBloc>(context)
                        .add(const UserAuthenticationEvent.userLogout());
                  },
                  icon: const Icon(
                    Icons.logout_outlined,
                    size: 30,
                  )),
            ),
          )
        ],
      ),
      body: SafeArea(
          child: BlocConsumer<GetproductBloc, GetproductState>(
        listener: (context, state) {},
        builder: (context, state) {
          switch (state.allProducts!.status) {
            case StateStatus.success:
              return state.allProducts!.data!.poducts.isNotEmpty
                  ? SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        ProductsbyCategory(userId: userId)));
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        164, 111, 137, 150),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  height: 60,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomTextSyles.labelText(
                                            "search products by category"),
                                        const Icon(
                                          Icons.arrow_forward,
                                          size: 30,
                                        )
                                      ],
                                    ),
                                  )),
                            ),
                            SpaceSized.space20H,
                            SizedBox(
                              child: GridView.builder(
                                physics: const ScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        childAspectRatio: .8,
                                        crossAxisSpacing: 5,
                                        mainAxisSpacing: 5),
                                itemBuilder: (context, index) => ProductCard(
                                  product:
                                      state.allProducts!.data!.poducts[index],
                                ),
                                itemCount:
                                    state.allProducts!.data!.poducts.length,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  : Center(
                      child: CustomTextSyles.labelText(
                        "No Product found upload your products ",
                      ),
                    );
            case StateStatus.error:
              return alertController
                  .warningAlert(state.allProducts!.errorMessage!);
            case StateStatus.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            default:
              return const SizedBox();
          }
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => AddProductPage(userId: userId),
          ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
