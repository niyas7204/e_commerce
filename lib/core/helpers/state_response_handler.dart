import 'package:e_commerce/core/enums/enums.dart';

class StateResponse<T> {
  String? errorMessage;
  T? data;
  StateStatus? status;
  StateResponse(this.data, this.errorMessage, this.status);
  StateResponse.loading() : status = StateStatus.loading;
  StateResponse.success(this.data) : status = StateStatus.success;
  StateResponse.error(this.errorMessage) : status = StateStatus.error;
  StateResponse.initial() : status = StateStatus.initial;
}
