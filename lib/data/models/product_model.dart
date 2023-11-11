import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_model.g.dart';

@JsonSerializable()
class Products {
  @JsonKey(name: "data")
  Data data;

  Products({
    required this.data,
  });

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "poducts")
  List<Poduct> poducts;

  Data({
    required this.poducts,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Poduct {
  @JsonKey(name: "product_id")
  String productId;
  @JsonKey(name: "product_code")
  String productCode;
  @JsonKey(name: "produc_name")
  String producName;
  @JsonKey(name: "poduct_image")
  String poductImage;
  @JsonKey(name: "poduct_discription")
  String poductDiscription;
  @JsonKey(name: "categories")
  String categories;

  Poduct({
    required this.productId,
    required this.productCode,
    required this.producName,
    required this.poductImage,
    required this.poductDiscription,
    required this.categories,
  });

  factory Poduct.fromJson(Map<String, dynamic> json) => _$PoductFromJson(json);

  Map<String, dynamic> toJson() => _$PoductToJson(this);
}
