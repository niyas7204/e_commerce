import 'package:e_commerce/core/helpers/state_response_handler.dart';
import 'package:e_commerce/data/models/product_model.dart';
import 'package:e_commerce/data/repository/get_products_service.dart';
import 'package:e_commerce/graphql/client/graphql_client.dart';
import 'package:e_commerce/graphql/query/get_all_product.dart';
import 'package:graphql/client.dart';

class GetProductImplimentation implements GetProductService {
  @override
  Future<StateResponse<Data>> getAllproducts({required String userId}) async {
    try {
      final getProductQuery = GetAllProductQuery(userId);
      final queryOption = QueryOptions(
          document: gql(
            getProductQuery.getAllPorductQuery,
          ),
          fetchPolicy: FetchPolicy.networkOnly);
      final queryResult =
          await GraphQlclientgenaration.graphQLClient.query(queryOption);
   
      Data products = Data.fromJson(queryResult.data!);
      return StateResponse.success(products);
    } catch (e) {
    
      return StateResponse.error('failed fetch products');
    }
  }

  @override
  Future<StateResponse<Data>> getproductsbycatogory(
      {required String userId, required String category}) async {
    try {
      final getProductQuery = GetProductByCatogeryQuery(userId, category);
      final queryOption =
          QueryOptions(document: gql(getProductQuery.getAllPorductQuery));
      final queryResult =
          await GraphQlclientgenaration.graphQLClient.query(queryOption);
      Data products = Data.fromJson(queryResult.data!);
      return StateResponse.success(products);
    } catch (e) {
      return StateResponse.error('failed fetch products');
    }
  }
}
