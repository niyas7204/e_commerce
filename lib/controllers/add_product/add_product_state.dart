part of 'add_product_bloc.dart';

@freezed
class AddProductState with _$AddProductState {
  const factory AddProductState({
    required StateResponse<XFile>? imageFile,
  }) = _AddProductState;
}
