import 'dart:io';

import 'package:e_commerce/controllers/add_product/add_product_bloc.dart';
import 'package:e_commerce/view/utils/constants/sizes.dart';
import 'package:e_commerce/view/utils/custom_texts_styles.dart';
import 'package:e_commerce/view/utils/text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> labels = [
      'Product Name',
      'Product Code',
      'Price',
      'Product Description'
          'Product Category'
    ];
    final TextEditingController codeController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();
    final TextEditingController priceController = TextEditingController();
    final TextEditingController categoriesController = TextEditingController();

    List<TextEditingController> controllers = [
      nameController,
      codeController,
      priceController,
      descriptionController,
      categoriesController
    ];

    final sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: BlocConsumer<AddProductBloc, AddProductState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          minHeight: 200,
                        ),
                        child: Container(
                          decoration: state.imageFile!.data != null
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      image: FileImage(
                                          File(state.imageFile!.data!.path))))
                              : BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color:
                                      const Color.fromARGB(255, 103, 133, 148),
                                ),
                          child: Center(
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  size: 100,
                                  color: Color.fromARGB(153, 68, 67, 67),
                                )),
                          ),
                        ),
                      ),
                    ),
                    SpaceSized.space20H,
                    ListView.separated(
                      physics: const ScrollPhysics(),
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
        },
      ),
    );
  }
}
