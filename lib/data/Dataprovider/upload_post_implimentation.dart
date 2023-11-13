import 'dart:io';

import 'package:e_commerce/core/helpers/state_response_handler.dart';
import 'package:e_commerce/data/models/get_categories_model.dart';
import 'package:e_commerce/data/models/product_model.dart';
import 'package:e_commerce/data/repository/upload_product_repo.dart';
import 'package:e_commerce/graphql/client/graphql_client.dart';
import 'package:e_commerce/graphql/query/get_all_product.dart';
import 'package:e_commerce/graphql/query/upload_product_query.dart';
import 'package:graphql/client.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class UploadProductImplimentation extends UploadProductServices {
  @override
  Future<StateResponse<String>> addImageToStorage(
      {required XFile imagefile}) async {
    try {
      Reference storageReference = FirebaseStorage.instance
          .ref()
          .child("TheCart/product?${DateTime.now()}.png");
      UploadTask uploadTask = storageReference.putFile(File(imagefile.path));
      TaskSnapshot snapShot = await uploadTask;
      String imageUrl = await snapShot.ref.getDownloadURL();
      return StateResponse.success(imageUrl);
    } on FirebaseException {
      return StateResponse.error('failed to sore');
    } catch (e) {
      return StateResponse.error('failed to sore');
    }
  }

  @override
  Future<StateResponse<XFile?>> pickImageFromGallery() async {
    XFile? imageFile;
    try {
      final ImagePicker imagePicker = ImagePicker();
      imageFile = await imagePicker.pickImage(source: ImageSource.gallery);
      return StateResponse.success(imageFile);
    } catch (e) {
      return StateResponse.error('Failed to pick Image from gallery');
    }
  }

  @override
  Future<StateResponse> uploadproduct({
    required Product product,
    required String userId,
  }) async {
    try {
      final getQuery = GetAllProductQuery(userId);
      final uploadproduct = UploadProducQuery(product, userId);
      final mutationOption = MutationOptions(
          document: gql(
            uploadproduct.uploadProductMutation,
          ),
          update: (cache, result) {
            final data = cache.readQuery(
                QueryOptions(document: gql(getQuery.getAllPorductQuery))
                    .asRequest);
            List products = data!["products"];
            products.addAll(result!.data!["insert_products"]["returning"]);
            final updateddata = Map<String, dynamic>.from(data);

            updateddata["products"] = products;
            cache.writeQuery(
                QueryOptions(document: gql(getQuery.getAllPorductQuery))
                    .asRequest,
                data: updateddata);
          },
          fetchPolicy: FetchPolicy.networkOnly);
      final uploadResponse =
          await GraphQlclientgenaration.graphQLClient.mutate(mutationOption);
      if (uploadResponse.hasException) {
        return StateResponse.error(
            "Product name and code should be unique try another one");
      } else {
        return StateResponse.success(null);
      }
    } catch (e) {
      return StateResponse.error('Failed to upload Post');
    }
  }

  @override
  Future<StateResponse<List<String>>> findCatorories(
      {required String query}) async {
    try {
      List<String> categoriesList = [];
      final getCategory = GetAllCategories(query);
      final queryOption =
          QueryOptions(document: gql(getCategory.getAllcategoriesQuery));
      final getResponse =
          await GraphQlclientgenaration.graphQLClient.query(queryOption);
      final categories = Categories.fromJson(getResponse.data!);
      if (categories.products!.isNotEmpty || categories.products != null) {
        for (var element in categories.products!) {
          categoriesList.add(element.categories);
        }
      }
      return StateResponse.success(categoriesList.toSet().toList());
    } on SocketException {
      return StateResponse.error("Network Failure");
    } catch (e) {
      return StateResponse.error("Failed to fetch categories");
    }
  }
}
