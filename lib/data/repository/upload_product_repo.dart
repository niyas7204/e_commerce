import 'package:e_commerce/core/helpers/state_response_handler.dart';
import 'package:image_picker/image_picker.dart';

abstract class UploadProduct {
  Future<StateResponse<XFile>> pickImageFromGallery();
  Future<StateResponse<String>> addImageToStorage();
  Future<StateResponse> uploadPost();
}
