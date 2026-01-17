import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mahmoud_task_trust/features/categories/domain/entities/category_entity.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/product_entity.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required int id,
    @JsonKey(name: 'name_en') required String nameEn,
    @JsonKey(name: 'name_ar') required String nameAr,
    required String image,
    @Default([]) List<ProductModel> products,
  }) = _CategoryModel;

  const CategoryModel._();

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  CategoryEntity toEntity(bool isArabic) {
    return CategoryEntity(
      id: id,
      name: isArabic ? nameAr : nameEn,
      image: image,
      products: products.map((product) => product.toEntity(isArabic)).toList(),
    );
  }
}

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    @JsonKey(name: 'name_en') required String nameEn,
    @JsonKey(name: 'name_ar') required String nameAr,
    @JsonKey(name: 'description_en') required String descriptionEn,
    @JsonKey(name: 'description_ar') required String descriptionAr,
    required String image,

    /// prices
    @JsonKey(name: 'price_tax') required int priceTax,
    @JsonKey(name: 'price_tax_sale') required int priceTaxSale,

    /// flags
    @JsonKey(name: 'on_sale') required bool onSale,
    required int points,
  }) = _ProductModel;

  const ProductModel._();

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  /// 🔁 Mapper
  ProductEntity toEntity(bool isArabic) {
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
