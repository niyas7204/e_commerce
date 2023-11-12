import 'package:e_commerce/controllers/add_product/add_product_bloc.dart';
import 'package:e_commerce/core/helpers/debouncer.dart';
import 'package:e_commerce/view/utils/custom_texts_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StyledTextfields {
  static styledtextfield(TextEditingController controller, String label) {
    return BlocBuilder<AddProductBloc, AddProductState>(
      builder: (context, state) {
        final debouncer = Debouncer(milliseconds: 1000);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextSyles.labelText(label),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 3)),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: 150,
                    minHeight: label == "Product Description" ? 100 : 60),
                child: TextFormField(
                  onChanged: label == "Product Category"
                      ? (value) async {
                          await debouncer.run(() {
                            BlocProvider.of<AddProductBloc>(context).add(
                                AddProductEvent.getCategories(query: value));
                          });
                        }
                      : (value) {},
                  maxLines: null,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                  controller: controller,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      border: InputBorder.none),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
