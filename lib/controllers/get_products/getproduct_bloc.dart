import 'package:bloc/bloc.dart';
import 'package:e_commerce/core/enums/enums.dart';
import 'package:e_commerce/core/helpers/state_response_handler.dart';
import 'package:e_commerce/data/models/product_model.dart';
import 'package:e_commerce/data/repository/get_products_service.dart';
import 'package:e_commerce/data/repository/upload_product_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'getproduct_event.dart';
part 'getproduct_state.dart';
part 'getproduct_bloc.freezed.dart';

class GetproductBloc extends Bloc<GetproductEvent, GetproductState> {
  final GetProductService getProductService;
  final UploadProductServices uploadProductServices;
  GetproductBloc(this.getProductService, this.uploadProductServices)
      : super(GetproductState.inital()) {
    on<_getAllProducts>((event, emit) async {
      emit(state.copyWith(
          allProducts: StateResponse.loading(), userid: event.userId));
      final productResult =
          await getProductService.getAllproducts(userId: event.userId);
      if (productResult.status == StateStatus.success) {
        emit(state.copyWith(
            allProducts: StateResponse.success(productResult.data)));
      } else if (productResult.status == StateStatus.error) {
        emit(state.copyWith(
            allProducts: StateResponse.error(productResult.errorMessage)));
      }
    });
    on<_getProductsbyCategory>((event, emit) async {
      emit(state.copyWith(productByCategory: StateResponse.loading()));
      final productResult = await getProductService.getproductsbycatogory(
          userId: event.userId, category: event.category);
      if (productResult.status == StateStatus.success) {
        emit(state.copyWith(
            productByCategory: StateResponse.success(productResult.data)));
      } else if (productResult.status == StateStatus.error) {
        emit(state.copyWith(
            productByCategory:
                StateResponse.error(productResult.errorMessage)));
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
