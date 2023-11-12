import 'package:bloc/bloc.dart';
import 'package:e_commerce/components/alert_diologs.dart';
import 'package:e_commerce/core/enums/enums.dart';
import 'package:e_commerce/core/helpers/state_response_handler.dart';
import 'package:e_commerce/data/models/product_model.dart';
import 'package:e_commerce/data/repository/upload_product_repo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

part 'add_product_event.dart';
part 'add_product_state.dart';
part 'add_product_bloc.freezed.dart';

class AddProductBloc extends Bloc<AddProductEvent, AddProductState> {
  final AlertDiologeWidgets alercontroller = Get.put(AlertDiologeWidgets());

  final UploadProductServices uploadProductServices;
  AddProductBloc(this.uploadProductServices)
      : super(AddProductState.initial()) {
    on<_pickImageFromGallery>((event, emit) async {
      emit(state.copyWith(imageFile: StateResponse.loading()));
      final pickResult = await uploadProductServices.pickImageFromGallery();
      if (pickResult.status == StateStatus.success) {
        emit(state.copyWith(imageFile: StateResponse.success(pickResult.data)));
      }
      if (pickResult.status == StateStatus.error) {
        emit(state.copyWith(
            imageFile: StateResponse.error(pickResult.errorMessage)));
      }
    });
    on<_uploadProduct>((event, emit) async {
      for (var controller in event.controllers) {
        if (controller.text.isEmpty) {
          return alercontroller.warningAlert('Fields should be complete');
        }
      }
      if (event.image == null) {
        return alercontroller.warningAlert('add product image');
      }
      emit(state.copyWith(addProductState: StateResponse.loading()));
      final storeImageResult = await uploadProductServices.addImageToStorage(
          imagefile: event.image!);
      if (storeImageResult.status == StateStatus.success) {
        final String uid = const Uuid().v1().toString();
        final Product product = Product(
            productId: uid,
            productCode: event.controllers[1].text.trim(),
            productName: event.controllers[0].text.trim(),
            productImage: storeImageResult.data!,
            price: num.parse(event.controllers[2].text.trim()),
            productDescription: event.controllers[3].text.trim(),
            categories: event.controllers[4].text.trim());
        final uploadProduct = await uploadProductServices.uploadproduct(
            product: product, userId: event.userId);
        if (uploadProduct.status == StateStatus.success) {
          for (var controller in event.controllers) {
            controller.clear();
          }
          emit(state.copyWith(
              addProductState: StateResponse.success(uploadProduct.data)));
          emit(state.copyWith(
              imageFile: StateResponse.initial(),
              addProductState: StateResponse.initial()));
        } else if (uploadProduct.status == StateStatus.error) {
          emit(state.copyWith(
              addProductState:
                  StateResponse.error(uploadProduct.errorMessage)));
        }
      }
      if (storeImageResult.status == StateStatus.error) {
        emit(state.copyWith(
            addProductState:
                StateResponse.error(storeImageResult.errorMessage)));
      }
    });
    on<_getCategories>((event, emit) async {
      emit(state.copyWith(getCategory: StateResponse.loading()));
      final result =
          await uploadProductServices.findCatorories(query: event.query);
      if (result.status == StateStatus.success) {
        emit(state.copyWith(
            categories: result.data!,
            getCategory: StateResponse.success(result.data)));
      } else if (result.status == StateStatus.error) {
        emit(state.copyWith(
            getCategory: StateResponse.error(result.errorMessage)));
      }
    });
  }
}
