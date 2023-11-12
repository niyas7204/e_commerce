import 'package:e_commerce/data/models/product_model.dart';
import 'package:e_commerce/view/pages/view_product.dart';
import 'package:e_commerce/view/utils/constants/sizes.dart';
import 'package:e_commerce/view/utils/custom_texts_styles.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ViewProduct(product: product),
        ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(87, 96, 125, 139),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12)),
                    color: Colors.black,
                    image: DecorationImage(
                        image: NetworkImage(
                      product.productImage,
                    ))),
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SpaceSized.space5H,
                  CustomTextSyles.nameText(product.productName),
                  SpaceSized.space5H,
                  CustomTextSyles.nameText("\u20B9 ${product.price}"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
