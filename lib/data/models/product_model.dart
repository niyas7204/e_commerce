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
  @JsonKey(name: "products")
  List<Product> poducts;

  Data({
    required this.poducts,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Product {
  @JsonKey(name: "product_id")
  String productId;
  @JsonKey(name: "product_code")
  String productCode;
  @JsonKey(name: "product_name")
  String productName;
  @JsonKey(name: "product_image")
  String productImage;
  @JsonKey(name: "price")
  num price;
  @JsonKey(name: "product_description")
  String productDescription;
  @JsonKey(name: "categories")
  String categories;

  Product({
    required this.price,
    required this.productId,
    required this.productCode,
    required this.productName,
    required this.productImage,
    required this.productDescription,
    required this.categories,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
