import 'dart:developer';
import 'dart:io';

import 'package:e_commerce/core/helpers/state_response_handler.dart';
import 'package:e_commerce/data/models/product_model.dart';
import 'package:e_commerce/data/repository/upload_product_repo.dart';
import 'package:e_commerce/graphql/client/graphql_client.dart';
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
    } catch (e) {}
    throw UnimplementedError();
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
  Future<StateResponse> uploadproduct({required Product product}) async {
    try {
      final uploadproduct = UploadProducQuery(product);
      final mutationOption =
          MutationOptions(document: gql(uploadproduct.uploadProductMutation));
      final uploadResponse =
          await GraphQlclientgenaration.graphQLClient.mutate(mutationOption);
      log(uploadResponse.toString());
      return StateResponse.success(null);
    } catch (e) {
      return StateResponse.error('Failed to upload Post');
    }
  }
}
