// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductWithAddonsModelImpl _$$ProductWithAddonsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductWithAddonsModelImpl(
      product:
          ProductDataModel.fromJson(json['product'] as Map<String, dynamic>),
      blocks: (json['blocks'] as List<dynamic>)
          .map((e) => BlockModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductWithAddonsModelImplToJson(
        _$ProductWithAddonsModelImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
      'blocks': instance.blocks,
    };

_$ProductDataModelImpl _$$ProductDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDataModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      nameAr: json['name_ar'] as String,
      price: json['price'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$ProductDataModelImplToJson(
        _$ProductDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_ar': instance.nameAr,
      'price': instance.price,
      'type': instance.type,
    };

_$BlockModelImpl _$$BlockModelImplFromJson(Map<String, dynamic> json) =>
    _$BlockModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      productAssociation: json['product_association'] as String,
      excludeProducts: json['exclude_products'] as String,
      userAssociation: json['user_association'] as String,
      excludeUsers: json['exclude_users'] as String,
      addons: (json['addons'] as List<dynamic>)
          .map((e) => AddonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BlockModelImplToJson(_$BlockModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'product_association': instance.productAssociation,
      'exclude_products': instance.excludeProducts,
      'user_association': instance.userAssociation,
      'exclude_users': instance.excludeUsers,
      'addons': instance.addons,
    };

_$AddonModelImpl _$$AddonModelImplFromJson(Map<String, dynamic> json) =>
    _$AddonModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      titleAr: json['title_ar'] as String,
      required: json['required'] as bool,
      isMultiChoice: json['IsMultiChoise'] as bool,
      minMaxRules: MinMaxRulesModel.fromJson(
          json['min_max_rules'] as Map<String, dynamic>),
      options: (json['options'] as List<dynamic>)
          .map((e) => AddonOptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AddonModelImplToJson(_$AddonModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'title_ar': instance.titleAr,
      'required': instance.required,
      'IsMultiChoise': instance.isMultiChoice,
      'min_max_rules': instance.minMaxRules,
      'options': instance.options,
    };

_$MinMaxRulesModelImpl _$$MinMaxRulesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MinMaxRulesModelImpl(
      min: (json['min'] as num).toInt(),
      max: (json['max'] as num).toInt(),
      exact: (json['exact'] as num).toInt(),
    );

Map<String, dynamic> _$$MinMaxRulesModelImplToJson(
        _$MinMaxRulesModelImpl instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
      'exact': instance.exact,
    };

_$AddonOptionModelImpl _$$AddonOptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddonOptionModelImpl(
      selectedByDefault: json['selected_by_default'] as bool,
      required: json['required'] as bool,
      addonEnabled: json['addon_enabled'] as bool,
      label: _stringFromJson(json['label']),
      labelAr: _stringFromJson(json['label_ar']),
      price: _priceFromJson(json['price']),
      priceType: _stringFromJson(json['price_type']),
      priceMethod: _stringFromJson(json['price_method']),
      tooltip: _stringFromJson(json['tooltip']),
      description: _stringFromJson(json['description']),
      image: _stringFromJson(json['image']),
      showImage: json['show_image'] as bool,
      labelInCart: json['label_in_cart'] as bool,
      labelInCartOpt: _stringFromJson(json['label_in_cart_opt']),
    );

Map<String, dynamic> _$$AddonOptionModelImplToJson(
        _$AddonOptionModelImpl instance) =>
    <String, dynamic>{
      'selected_by_default': instance.selectedByDefault,
      'required': instance.required,
      'addon_enabled': instance.addonEnabled,
      'label': instance.label,
      'label_ar': instance.labelAr,
      'price': _priceToJson(instance.price),
      'price_type': instance.priceType,
      'price_method': instance.priceMethod,
      'tooltip': instance.tooltip,
      'description': instance.description,
      'image': instance.image,
      'show_image': instance.showImage,
      'label_in_cart': instance.labelInCart,
      'label_in_cart_opt': instance.labelInCartOpt,
    };
