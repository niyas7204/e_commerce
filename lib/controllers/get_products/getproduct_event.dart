part of 'getproduct_bloc.dart';

@freezed
class GetproductEvent with _$GetproductEvent {
  const factory GetproductEvent.getAllProducts({required String userId}) =
      _getAllProducts;
  const factory GetproductEvent.getProductsbyCategory(
      {required String userId,
      required String category}) = _getProductsbyCategory;
  const factory GetproductEvent.getCategories({required String query}) =
      _getCategories;
}
