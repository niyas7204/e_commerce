// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Products _$ProductsFromJson(Map<String, dynamic> json) => Products(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductsToJson(Products instance) => <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      poducts: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'products': instance.poducts,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      price: json['price'] as num,
      productId: json['product_id'] as String,
      productCode: json['product_code'] as String,
      productName: json['product_name'] as String,
      productImage: json['product_image'] as String,
      productDescription: json['product_description'] as String,
      categories: json['categories'] as String,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'product_id': instance.productId,
      'product_code': instance.productCode,
      'product_name': instance.productName,
      'product_image': instance.productImage,
      'price': instance.price,
      'product_description': instance.productDescription,
      'categories': instance.categories,
    };
