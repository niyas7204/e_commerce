import 'package:e_commerce/view/utils/custom_texts_styles.dart';
import 'package:flutter/material.dart';

class StyledTextfields {
  static styledtextfield(TextEditingController controller, String label) {
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
              maxLines: null,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              controller: controller,
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(12), border: InputBorder.none),
            ),
          ),
        ),
      ],
    );
  }
}
