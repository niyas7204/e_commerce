import 'package:e_commerce/view/utils/constants/sizes.dart';
import 'package:e_commerce/view/utils/custom_texts_styles.dart';
import 'package:e_commerce/view/utils/text_fields.dart';
import 'package:flutter/material.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> labels = [
      'Product Name',
      'Product Code',
      'Price',
      'Product Description'
    ];
    final TextEditingController codeController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();
    final TextEditingController priceController = TextEditingController();
    List<TextEditingController> controllers = [
      nameController,
      codeController,
      priceController,
      descriptionController
    ];

    final sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.blueGrey,
                    width: sizeWidth * .9,
                    height: 200,
                  ),
                  Positioned(
                      top: 125,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            size: 50,
                          )))
                ],
              ),
              ListView.separated(
                shrinkWrap: true,
                itemCount: labels.length,
                separatorBuilder: (context, index) => SpaceSized.space10H,
                itemBuilder: (context, index) =>
                    StyledTextfields.styledtextfield(
                        controllers[index], labels[index]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
