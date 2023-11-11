part of 'add_product_bloc.dart';

@freezed
class AddProductEvent with _$AddProductEvent {
  const factory AddProductEvent.pickImageFromGallery() = _pickImageFromGallery;
  const factory AddProductEvent.uploadProduct(
      {required List<TextEditingController> controllers,
      required XFile? image}) = _uploadProduct;
}
