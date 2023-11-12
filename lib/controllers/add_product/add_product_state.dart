part of 'add_product_bloc.dart';

@freezed
class AddProductState with _$AddProductState {
  const factory AddProductState(
      {required StateResponse<XFile>? imageFile,
      required StateResponse addProductState,
      required List<String> categories,
      required StateResponse<List<String>> getCategory}) = _AddProductState;
  factory AddProductState.initial() => _AddProductState(
      categories: [],
      getCategory: StateResponse.initial(),
      addProductState: StateResponse.initial(),
      imageFile: StateResponse.initial());
}
