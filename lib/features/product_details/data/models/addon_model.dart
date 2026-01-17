// lib/features/product/data/models/product_with_addons_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/addon_entity.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/product_entity.dart';

part 'product_with_addons_model.freezed.dart';
part 'product_with_addons_model.g.dart';

/// ====================
/// 1️⃣ Product With Addons Model
/// ====================
@freezed
class ProductWithAddonsModel with _$ProductWithAddonsModel {
  const factory ProductWithAddonsModel({
    required ProductDataModel product,
    required List<BlockModel> blocks,
  }) = _ProductWithAddonsModel;

  factory ProductWithAddonsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductWithAddonsModelFromJson(json);
}

/// ====================
/// 2️⃣ Product Data
/// ====================
@freezed
class ProductDataModel with _$ProductDataModel {
  const factory ProductDataModel({
    required int id,
    required String name,
    @JsonKey(name: 'name_ar') required String nameAr,
    required String price,
    required String type,
  }) = _ProductDataModel;

  factory ProductDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDataModelFromJson(json);
}

/// ====================
/// 3️⃣ Block Model
/// ====================
@freezed
class BlockModel with _$BlockModel {
  const factory BlockModel({
    required String id,
    required String name,
    @JsonKey(name: 'product_association') required String productAssociation,
    @JsonKey(name: 'exclude_products') required String excludeProducts,
    @JsonKey(name: 'user_association') required String userAssociation,
    @JsonKey(name: 'exclude_users') required String excludeUsers,
    required List<AddonModel> addons,
  }) = _BlockModel;

  factory BlockModel.fromJson(Map<String, dynamic> json) =>
      _$BlockModelFromJson(json);
}

/// ====================
/// 4️⃣ Addon Model
/// ====================
@freezed
class AddonModel with _$AddonModel {
  const factory AddonModel({
    required int id,
    required String title,
    @JsonKey(name: 'title_ar') required String titleAr,
    required bool required,
    @JsonKey(name: 'IsMultiChoise') required bool isMultiChoice,
    @JsonKey(name: 'min_max_rules') required MinMaxRulesModel minMaxRules,
    required List<AddonOptionModel> options,
  }) = _AddonModel;

  factory AddonModel.fromJson(Map<String, dynamic> json) =>
      _$AddonModelFromJson(json);
}

/// ====================
/// 5️⃣ MinMax Rules
/// ====================
@freezed
class MinMaxRulesModel with _$MinMaxRulesModel {
  const factory MinMaxRulesModel({
    required int min,
    required int max,
    required int exact,
  }) = _MinMaxRulesModel;

  factory MinMaxRulesModel.fromJson(Map<String, dynamic> json) =>
      _$MinMaxRulesModelFromJson(json);
}

/// ====================
/// 6️⃣ Addon Option
/// ====================
@freezed
class AddonOptionModel with _$AddonOptionModel {
  const factory AddonOptionModel({
    @JsonKey(name: 'selected_by_default') required bool selectedByDefault,
    required bool required,
    @JsonKey(name: 'addon_enabled') required bool addonEnabled,
    required String label,
    @JsonKey(name: 'label_ar') required String labelAr,
    required String price,
    @JsonKey(name: 'price_type') required String priceType,
    @JsonKey(name: 'price_method') required String priceMethod,
    required String tooltip,
    required String description,
    required String image,
    @JsonKey(name: 'show_image') required bool showImage,
    @JsonKey(name: 'label_in_cart') required bool labelInCart,
    @JsonKey(name: 'label_in_cart_opt') required String labelInCartOpt,
  }) = _AddonOptionModel;

  factory AddonOptionModel.fromJson(Map<String, dynamic> json) =>
      _$AddonOptionModelFromJson(json);
}

extension ProductModelMapper on ProductWithAddonsModel {
  ProductEntity toEntity({required bool isArabic}) {
    return ProductEntity(
      id: id,
      name: isArabic ? nameAr : nameEn,
      description: isArabic ? descriptionAr : descriptionEn,
      image: image,
      price: onSale ? priceTaxSale : priceTax,
      points: points,
      onSale: onSale,
    );
  }
}
