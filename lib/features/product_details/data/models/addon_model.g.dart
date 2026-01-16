// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddonModelImpl _$$AddonModelImplFromJson(Map<String, dynamic> json) =>
    _$AddonModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: json['price'] as String,
    );

Map<String, dynamic> _$$AddonModelImplToJson(_$AddonModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
    };
