// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: (json['id'] ?? 1).toInt(),
      nameEn: json['name_en'] ?? "",
      nameAr: json['name_ar'] ?? "",
      descriptionEn: json['description_en'] ?? "",
      descriptionAr: json['description_ar'] ?? "",
      price: json['price'] ?? "",
      image: json['image'] ?? "",
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_en': instance.nameEn,
      'name_ar': instance.nameAr,
      'description_en': instance.descriptionEn,
      'description_ar': instance.descriptionAr,
      'price': instance.price,
      'image': instance.image,
    };
