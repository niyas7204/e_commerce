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
      poducts: (json['poducts'] as List<dynamic>)
          .map((e) => Poduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'poducts': instance.poducts,
    };

Poduct _$PoductFromJson(Map<String, dynamic> json) => Poduct(
      productId: json['product_id'] as String,
      productCode: json['product_code'] as String,
      producName: json['produc_name'] as String,
      poductImage: json['poduct_image'] as String,
      poductDiscription: json['poduct_discription'] as String,
      categories: json['categories'] as String,
    );

Map<String, dynamic> _$PoductToJson(Poduct instance) => <String, dynamic>{
      'product_id': instance.productId,
      'product_code': instance.productCode,
      'produc_name': instance.producName,
      'poduct_image': instance.poductImage,
      'poduct_discription': instance.poductDiscription,
      'categories': instance.categories,
    };
