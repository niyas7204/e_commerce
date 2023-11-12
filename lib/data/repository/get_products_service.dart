import 'package:e_commerce/core/helpers/state_response_handler.dart';
import 'package:e_commerce/data/models/product_model.dart';

abstract class GetProductService {
  Future<StateResponse<Data>> getAllproducts({required String userId});
  Future<StateResponse<Data>> getproductsbycatogory(
      {required String userId, required String category});
}
