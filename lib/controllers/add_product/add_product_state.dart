part of 'add_product_bloc.dart';

@freezed
class AddProductState with _$AddProductState {
  const factory AddProductState(
      {required StateResponse<XFile>? imageFile,
      required StateResponse addProductState}) = _AddProductState;
  factory AddProductState.initial() => _AddProductState(
      addProductState: StateResponse.initial(),
      imageFile: StateResponse.initial());
}
