import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mahmoud_task_trust/features/categories/domain/entities/category_entity.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required int id,
    @JsonKey(name: 'name_en') required String nameEn,
    @JsonKey(name: 'name_ar') required String nameAr,
    required String image,
  }) = _CategoryModel;

  const CategoryModel._();

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  /// 🔁 Mapper
  CategoryEntity toEntity(bool isArabic) {
    return CategoryEntity(
      id: id,
      name: isArabic ? nameAr : nameEn,
      image: image,
    );
  }
}

// @freezed
// class ProductModel with _$ProductModel {
//   const factory ProductModel({
//     required int id,
//     @JsonKey(name: 'name_en') required String nameEn,
//     @JsonKey(name: 'name_ar') required String nameAr,
//     required String image,
//     @JsonKey(name: 'price') required String price,
//   }) = _ProductModel;

//   factory ProductModel.fromJson(Map<String, dynamic> json) =>
//       _$ProductModelFromJson(json);
// }
