part of 'add_product_bloc.dart';

@freezed
class AddProductEvent with _$AddProductEvent {
  const factory AddProductEvent.pickImageFromGallery() = _pickImageFromGallery;
  const factory AddProductEvent.uploadProduct(
      {required List<TextEditingController> controllers,
      required String userId,
      required XFile? image}) = _uploadProduct;
  const factory AddProductEvent.getCategories({required String query}) =
      _getCategories;
}
