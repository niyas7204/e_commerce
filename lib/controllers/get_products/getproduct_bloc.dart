import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'getproduct_event.dart';
part 'getproduct_state.dart';
part 'getproduct_bloc.freezed.dart';

class GetproductBloc extends Bloc<GetproductEvent, GetproductState> {
  GetproductBloc() : super(_Initial()) {
    on<GetproductEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
