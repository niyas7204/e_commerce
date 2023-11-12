import 'dart:io';

import 'package:e_commerce/components/alert_diologs.dart';
import 'package:e_commerce/controllers/add_product/add_product_bloc.dart';
import 'package:e_commerce/core/enums/enums.dart';
import 'package:e_commerce/view/utils/constants/sizes.dart';
import 'package:e_commerce/view/utils/custom_texts_styles.dart';
import 'package:e_commerce/view/utils/text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class AddProductPage extends StatelessWidget {
  final String userId;
  const AddProductPage({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    final List<String> labels = [
      'Product Name',
      'Product Code',
      'Price',
      'Product Description',
      'Product Category'
    ];
    final TextEditingController codeController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();
    final TextEditingController priceController = TextEditingController();
    final TextEditingController categoriesController = TextEditingController();
    final AlertDiologeWidgets alertcontroller = Get.put(AlertDiologeWidgets());
    List<TextEditingController> controllers = [
      nameController,
      codeController,
      priceController,
      descriptionController,
      categoriesController
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
        title: CustomTextSyles.header1('TheCart'),
      ),
      body: BlocConsumer<AddProductBloc, AddProductState>(
        listener: (context, state) {
          if (state.addProductState.status == StateStatus.success) {
            alertcontroller.warningAlert("Product upload success");
          } else if (state.addProductState.status == StateStatus.error) {
            alertcontroller.warningAlert(state.addProductState.errorMessage!);
          }
        },
        builder: (context, state) {
          return SafeArea(
            child: Stack(
              children: [
                SingleChildScrollView(
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
                                          image: FileImage(File(
                                              state.imageFile!.data!.path))))
                                  : BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: const Color.fromARGB(
                                          255, 103, 133, 148),
                                    ),
                              child: Center(
                                child: IconButton(
                                    onPressed: () {
                                      BlocProvider.of<AddProductBloc>(context)
                                          .add(const AddProductEvent
                                              .pickImageFromGallery());
                                    },
                                    icon: const Icon(
                                      Icons.add,
                                      size: 100,
                                      color: Color.fromARGB(223, 217, 213, 213),
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
                          separatorBuilder: (context, index) =>
                              labels[index] == "Product Category"
                                  ? const SizedBox()
                                  : SpaceSized.space10H,
                          itemBuilder: (context, index) =>
                              StyledTextfields.styledtextfield(
                                  controllers[index], labels[index]),
                        ),
                        state.getCategory.status == StateStatus.success
                            ? Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        160, 180, 192, 198),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: state.categories.length,
                                    itemBuilder: (context, index) {
                                      return ListTile(
                                        onTap: () {
                                          categoriesController.text =
                                              state.categories[index];
                                        },
                                        title: CustomTextSyles.labelText(
                                            state.categories[index]),
                                      );
                                    },
                                  ),
                                ),
                              )
                            : state.getCategory.status == StateStatus.loading
                                ? const Center(
                                    child: CircularProgressIndicator(),
                                  )
                                : const SizedBox(),
                        SpaceSized.space10H,
                        Center(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(208, 198, 238, 231),
                                padding: const EdgeInsets.all(16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              onPressed: () {
                                BlocProvider.of<AddProductBloc>(context).add(
                                    AddProductEvent.uploadProduct(
                                        controllers: controllers,
                                        image: state.imageFile!.data,
                                        userId: userId));
                              },
                              child: CustomTextSyles.labelText('Upload')),
                        )
                      ],
                    ),
                  ),
                ),
                state.addProductState.status == StateStatus.loading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : const SizedBox()
              ],
            ),
          );
        },
      ),
    );
  }
}
