// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Categories _$CategoriesFromJson(Map<String, dynamic> json) => Categories(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoriesToJson(Categories instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      categories: json['categories'] as String,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'categories': instance.categories,
    };
