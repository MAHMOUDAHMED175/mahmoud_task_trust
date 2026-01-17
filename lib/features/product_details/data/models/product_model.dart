import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/addon_entity.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/product_entity.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

// Fixed DateTime parsing from API response
/// Helper functions for JSON parsing
String _stringFromJson(dynamic json) {
  if (json == null) return '';
  if (json is String) return json;
  if (json is int) return json.toString();
  if (json is double) return json.toStringAsFixed(2);
  if (json is Map) return json.toString();
  return json.toString();
}

String? _nullableStringFromJson(dynamic json) {
  if (json == null) return null;
  if (json is String) return json;
  if (json is int) return json.toString();
  if (json is double) return json.toStringAsFixed(2);
  if (json is Map) return json.toString();
  return json.toString();
}

DateTime _dateTimeFromJson(dynamic json) {
  if (json == null) return DateTime.now();
  if (json is DateTime) return json;
  if (json is String) {
    try {
      return DateTime.parse(json);
    } catch (_) {
      return DateTime.now();
    }
  }
  if (json is Map<String, dynamic>) {
    try {
      final dateStr = json['date'] as String?;
      if (dateStr != null) {
        return DateTime.parse(dateStr);
      }
    } catch (_) {}
  }
  return DateTime.now();
}

dynamic _stringToJson(String value) => value;
dynamic _nullableStringToJson(String? value) => value;
dynamic _dateTimeToJson(DateTime value) => value.toIso8601String();

@freezed
class ProductDetailsModel with _$ProductDetailsModel {
  const factory ProductDetailsModel({
    required int id,
    required String name,
    required String slug,
    @JsonKey(name: 'date_created') required DateTime dateCreated,
    @JsonKey(name: 'date_modified') required DateTime dateModified,
    required String status,
    required bool featured,
    @JsonKey(name: 'catalog_visibility') required String catalogVisibility,
    required String description,
    @JsonKey(name: 'short_description') required String shortDescription,
    required String sku,
    @JsonKey(name: 'global_unique_id') required String globalUniqueId,
    @JsonKey(fromJson: _stringFromJson, toJson: _stringToJson)
    required String price,
    @JsonKey(
        name: 'regular_price', fromJson: _stringFromJson, toJson: _stringToJson)
    required String regularPrice,
    @JsonKey(
        name: 'sale_price', fromJson: _stringFromJson, toJson: _stringToJson)
    required String salePrice,
    @JsonKey(name: 'total_sales') required int totalSales,
    @JsonKey(name: 'tax_status') required String taxStatus,
    @JsonKey(name: 'tax_class') required String taxClass,
    @JsonKey(name: 'manage_stock') required bool manageStock,
    @JsonKey(name: 'stock_quantity') int? stockQuantity,
    @JsonKey(name: 'stock_status') required String stockStatus,
    @JsonKey(name: 'backorders') required String backorders,
    @JsonKey(name: 'sold_individually') required bool soldIndividually,
    @JsonKey(fromJson: _stringFromJson, toJson: _stringToJson)
    required String weight,
    @JsonKey(fromJson: _stringFromJson, toJson: _stringToJson)
    required String length,
    @JsonKey(fromJson: _stringFromJson, toJson: _stringToJson)
    required String width,
    @JsonKey(fromJson: _stringFromJson, toJson: _stringToJson)
    required String height,
    @JsonKey(name: 'upsell_ids') required List<int> upsellIds,
    @JsonKey(name: 'cross_sell_ids') required List<int> crossSellIds,
    @JsonKey(name: 'parent_id') required int parentId,
    @JsonKey(name: 'reviews_allowed') required bool reviewsAllowed,
    @JsonKey(
        name: 'purchase_note', fromJson: _stringFromJson, toJson: _stringToJson)
    required String purchaseNote,
    required List<dynamic> attributes,
    @JsonKey(name: 'default_attributes')
    required List<dynamic> defaultAttributes,
    @JsonKey(name: 'menu_order') required int menuOrder,
    @JsonKey(
        name: 'post_password', fromJson: _stringFromJson, toJson: _stringToJson)
    required String postPassword,
    required bool virtual,
    required bool downloadable,
    @JsonKey(name: 'category_ids') required List<int> categoryIds,
    @JsonKey(name: 'tag_ids') required List<int> tagIds,
    @JsonKey(name: 'brand_ids') required List<int> brandIds,
    @JsonKey(name: 'shipping_class_id') required int shippingClassId,
    required List<dynamic> downloads,
    @JsonKey(name: 'download_limit') required int downloadLimit,
    @JsonKey(name: 'download_expiry') required int downloadExpiry,
    @JsonKey(name: 'rating_counts') required List<dynamic> ratingCounts,
    @JsonKey(
        name: 'average_rating',
        fromJson: _stringFromJson,
        toJson: _stringToJson)
    required String averageRating,
    @JsonKey(name: 'review_count') required int reviewCount,
    @JsonKey(
        name: 'cogs_value',
        fromJson: _nullableStringFromJson,
        toJson: _nullableStringToJson)
    String? cogsValue,
    @JsonKey(name: 'meta_data') required List<dynamic> metaData,
    @JsonKey(name: 'name_en') required String nameEn,
    @JsonKey(name: 'name_ar') required String nameAr,
    @JsonKey(name: 'description_en') required String descriptionEn,
    @JsonKey(name: 'description_ar') required String descriptionAr,
    required String image,
    @JsonKey(name: 'price_tax') required int priceTax,
    @JsonKey(name: 'price_tax_sale') required int priceTaxSale,
    required int points,
    @JsonKey(name: 'on_sale') required bool onSale,
    @JsonKey(name: 'related_ids') required List<int> relatedIds,
    required String type,
  }) = _ProductDetailsModel;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsModelFromJson(json);
}

extension ProductDetailsModelMapper on ProductDetailsModel {
  /// 🔁 Mapper: ProductDetailsModel -> ProductEntity
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
