part of 'getproduct_bloc.dart';

@freezed
class GetproductState with _$GetproductState {
  const factory GetproductState(
      {required StateResponse<Data?>? allProducts,
      required StateResponse<Data?>? productByCategory,
      required List<String>? categories,
      required String? userid,
      required StateResponse<List<String>> getCategory}) = _GetproductState;
  factory GetproductState.inital() => _GetproductState(
      userid: null,
      getCategory: StateResponse.initial(),
      categories: [],
      allProducts: StateResponse.initial(),
      productByCategory: StateResponse.initial());
}
