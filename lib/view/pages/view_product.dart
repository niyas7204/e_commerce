import 'package:e_commerce/data/models/product_model.dart';
import 'package:e_commerce/view/utils/constants/sizes.dart';
import 'package:e_commerce/view/utils/custom_texts_styles.dart';
import 'package:flutter/material.dart';

class ViewProduct extends StatelessWidget {
  final Product product;
  const ViewProduct({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 231, 239),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
        title: CustomTextSyles.header1('TheCart'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomTextSyles.header1('Name: '),
                    CustomTextSyles.header1(product.productName),
                  ],
                ),
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      color: Colors.black,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            product.productImage,
                          ))),
                ),
                SpaceSized.space20H,
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(width: 2)),
                  child: CustomTextSyles.labelText(
                      "productCode: ${product.productCode}"),
                ),
                SpaceSized.space10H,
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(width: 2)),
                  child: CustomTextSyles.labelText(
                      "Price: \u20B9${product.price}"),
                ),
                SpaceSized.space10H,
                CustomTextSyles.labelText("About :"),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                      minWidth: double.infinity, minHeight: 100),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(width: 2)),
                    child: CustomTextSyles.nameText(product.productDescription),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
