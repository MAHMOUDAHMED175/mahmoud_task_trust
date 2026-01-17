// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: (json['id'] as num).toInt(),
      nameEn: json['name_en'] as String,
      nameAr: json['name_ar'] as String,
      descriptionEn: json['description_en'] as String,
      descriptionAr: json['description_ar'] as String,
      image: json['image'] as String,
      priceTax: (json['price_tax'] as num).toInt(),
      priceTaxSale: (json['price_tax_sale'] as num).toInt(),
      onSale: json['on_sale'] as bool,
      points: (json['points'] as num).toInt(),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_en': instance.nameEn,
      'name_ar': instance.nameAr,
      'description_en': instance.descriptionEn,
      'description_ar': instance.descriptionAr,
      'image': instance.image,
      'price_tax': instance.priceTax,
      'price_tax_sale': instance.priceTaxSale,
      'on_sale': instance.onSale,
      'points': instance.points,
    };
