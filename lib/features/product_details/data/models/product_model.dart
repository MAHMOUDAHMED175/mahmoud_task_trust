import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/addon_entity.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/product_entity.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

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
    required String price,
    @JsonKey(name: 'regular_price') required String regularPrice,
    @JsonKey(name: 'sale_price') required String salePrice,
    @JsonKey(name: 'total_sales') required int totalSales,
    @JsonKey(name: 'tax_status') required String taxStatus,
    @JsonKey(name: 'tax_class') required String taxClass,
    @JsonKey(name: 'manage_stock') required bool manageStock,
    @JsonKey(name: 'stock_quantity') int? stockQuantity,
    @JsonKey(name: 'stock_status') required String stockStatus,
    @JsonKey(name: 'backorders') required String backorders,
    @JsonKey(name: 'sold_individually') required bool soldIndividually,
    required String weight,
    required String length,
    required String width,
    required String height,
    @JsonKey(name: 'upsell_ids') required List<int> upsellIds,
    @JsonKey(name: 'cross_sell_ids') required List<int> crossSellIds,
    @JsonKey(name: 'parent_id') required int parentId,
    @JsonKey(name: 'reviews_allowed') required bool reviewsAllowed,
    @JsonKey(name: 'purchase_note') required String purchaseNote,
    required List<dynamic> attributes,
    @JsonKey(name: 'default_attributes')
    required List<dynamic> defaultAttributes,
    @JsonKey(name: 'menu_order') required int menuOrder,
    @JsonKey(name: 'post_password') required String postPassword,
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
    @JsonKey(name: 'average_rating') required String averageRating,
    @JsonKey(name: 'review_count') required int reviewCount,
    @JsonKey(name: 'cogs_value') String? cogsValue,
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
