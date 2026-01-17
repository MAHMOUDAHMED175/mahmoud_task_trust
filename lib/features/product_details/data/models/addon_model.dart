// lib/features/product/data/models/product_with_addons_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/addon_entity.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/product_entity.dart';

part 'addon_model.freezed.dart';
part 'addon_model.g.dart';

/// Helper functions for JSON parsing
String _stringFromJson(dynamic json) {
  if (json == null) return '';
  if (json is String) return json;
  if (json is int) return json.toString();
  if (json is double) return json.toStringAsFixed(2);
  if (json is Map) return json.toString();
  return json.toString();
}

String _priceFromJson(dynamic json) {
  if (json == null) return '0';
  if (json is String) return json;
  if (json is int) return json.toString();
  if (json is double) return json.toStringAsFixed(2);
  if (json is Map) return json.toString();
  return json.toString();
}

dynamic _stringToJson(String value) => value;
dynamic _priceToJson(String value) => value;

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
    @JsonKey(fromJson: _stringFromJson) required String label,
    @JsonKey(name: 'label_ar', fromJson: _stringFromJson)
    required String labelAr,
    @JsonKey(fromJson: _priceFromJson, toJson: _priceToJson)
    required String price,
    @JsonKey(name: 'price_type', fromJson: _stringFromJson)
    required String priceType,
    @JsonKey(name: 'price_method', fromJson: _stringFromJson)
    required String priceMethod,
    @JsonKey(fromJson: _stringFromJson) required String tooltip,
    @JsonKey(fromJson: _stringFromJson) required String description,
    @JsonKey(fromJson: _stringFromJson) required String image,
    @JsonKey(name: 'show_image') required bool showImage,
    @JsonKey(name: 'label_in_cart') required bool labelInCart,
    @JsonKey(name: 'label_in_cart_opt', fromJson: _stringFromJson)
    required String labelInCartOpt,
  }) = _AddonOptionModel;

  factory AddonOptionModel.fromJson(Map<String, dynamic> json) =>
      _$AddonOptionModelFromJson(json);
}

// 1️⃣ AddonOptionModel -> AddonOptionEntity
// ====================
extension AddonOptionModelMapper on AddonOptionModel {
  AddonOptionEntity toEntity() {
    return AddonOptionEntity(
      label: label,
      selectedByDefault: selectedByDefault,
    );
  }
}

// ====================
// 2️⃣ MinMaxRulesModel -> MinMaxRulesEntity
// ====================
extension MinMaxRulesModelMapper on MinMaxRulesModel {
  MinMaxRulesEntity toEntity() {
    return MinMaxRulesEntity(
      min: min,
      max: max,
      exact: exact,
    );
  }
}

// ====================
// 3️⃣ AddonModel -> AddonEntity
// ====================
extension AddonModelMapper on AddonModel {
  AddonEntity toEntity() {
    return AddonEntity(
      id: id,
      title: title,
      required: true,
      isMultiChoice: isMultiChoice,
      minMaxRules: minMaxRules.toEntity(),
      options: options.map((option) => option.toEntity()).toList(),
    );
  }
}

// ====================
// 4️⃣ BlockModel -> List<AddonEntity> (داخل المنتج)
// ====================
extension BlockModelMapper on BlockModel {
  List<AddonEntity> toEntities() {
    return addons.map((addon) => addon.toEntity()).toList();
  }
}

// ====================
// 5️⃣ ProductDataModel -> ProductEntity
// ====================
extension ProductDataModelMapper on ProductDataModel {
  ProductEntity toEntity() {
    return ProductEntity(
      id: id,
      name: name,
      description: '', // لو عندك description ممكن تضيفه
      image: '', // لو عندك image URL ممكن تضيفه
      price: int.tryParse(price) ?? 0,
      points: 0, // لو عندك نقاط تقدر تحطها
      onSale: false, // لو عندك info عن onSale
    );
  }
}

// ====================
// 6️⃣ ProductWithAddonsModel -> ProductEntity مع كل الـ Blocks
// ====================
extension ProductWithAddonsModelMapper on ProductWithAddonsModel {
  ProductEntity toEntity() {
    return ProductEntity(
      id: product.id,
      name: product.name,
      description: '', // لو عندك description
      image: '', // لو عندك image
      price: int.tryParse(product.price) ?? 0,
      points: 0,
      onSale: false,
    );
  }

  List<AddonEntity> getAllAddons() {
    final allAddons = <AddonEntity>[];
    for (var block in blocks) {
      allAddons.addAll(block.toEntities());
    }
    return allAddons;
  }
}
