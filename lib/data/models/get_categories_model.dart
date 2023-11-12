import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_categories_model.g.dart';

@JsonSerializable()
class Categories {
  @JsonKey(name: "products")
  List<Category>? products;

  Categories({
    required this.products,
  });

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesToJson(this);
}

@JsonSerializable()
class Category {
  @JsonKey(name: "categories")
  String categories;

  Category({
    required this.categories,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
