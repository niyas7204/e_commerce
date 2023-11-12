import 'package:e_commerce/components/alert_diologs.dart';
import 'package:e_commerce/controllers/get_products/getproduct_bloc.dart';
import 'package:e_commerce/core/enums/enums.dart';
import 'package:e_commerce/core/helpers/debouncer.dart';
import 'package:e_commerce/view/components/product_card.dart';
import 'package:e_commerce/view/pages/add_products.dart';
import 'package:e_commerce/view/utils/constants/sizes.dart';
import 'package:e_commerce/view/utils/custom_texts_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class ProductsbyCategory extends StatelessWidget {
  final String userId;
  const ProductsbyCategory({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    final TextEditingController categoryController = TextEditingController();
    final debouncer = Debouncer(milliseconds: 1000);
    final AlertDiologeWidgets alertController = Get.put(AlertDiologeWidgets());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
        title: CustomTextSyles.header1('TheCart'),
      ),
      body: SafeArea(
          child: BlocConsumer<GetproductBloc, GetproductState>(
        listener: (context, state) {},
        builder: (context, state) {
          switch (state.productByCategory!.status) {
            case StateStatus.success || StateStatus.initial:
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: TextFormField(
                          onChanged: (value) async {
                            await debouncer.run(() {
                              BlocProvider.of<GetproductBloc>(context).add(
                                  GetproductEvent.getCategories(query: value));
                            });
                          },
                          maxLines: null,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                          controller: categoryController,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(12),
                              border: InputBorder.none),
                        ),
                      ),
                      state.getCategory.status == StateStatus.success
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(160, 180, 192, 198),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: state.categories!.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      onTap: () {
                                        BlocProvider.of<GetproductBloc>(context)
                                            .add(GetproductEvent
                                                .getProductsbyCategory(
                                                    userId: userId,
                                                    category: state
                                                        .categories![index]));
                                      },
                                      title: CustomTextSyles.labelText(
                                          state.categories![index]),
                                    );
                                  },
                                ),
                              ),
                            )
                          : const SizedBox(),
                      SpaceSized.space20H,
                      state.productByCategory!.data != null &&
                              state.productByCategory!.data!.poducts.isNotEmpty
                          ? SizedBox(
                              child: GridView.builder(
                                physics: const ScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 5,
                                        mainAxisSpacing: 5),
                                itemBuilder: (context, index) => ProductCard(
                                  product: state
                                      .productByCategory!.data!.poducts[index],
                                ),
                                itemCount: state
                                    .productByCategory!.data!.poducts.length,
                              ),
                            )
                          : Center(
                              child: CustomTextSyles.labelText(
                                "Serch a catogory ",
                              ),
                            )
                    ],
                  ),
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
