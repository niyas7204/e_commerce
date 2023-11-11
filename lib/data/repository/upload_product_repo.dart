import 'package:e_commerce/core/helpers/state_response_handler.dart';
import 'package:e_commerce/data/models/product_model.dart';
import 'package:image_picker/image_picker.dart';

abstract class UploadProductServices {
  Future<StateResponse<XFile?>> pickImageFromGallery();
  Future<StateResponse<String>> addImageToStorage({required XFile imagefile});
  Future<StateResponse> uploadproduct({required Product product});
}
