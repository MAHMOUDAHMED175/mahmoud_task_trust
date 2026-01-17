// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_en')
  String get nameEn => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_ar')
  String get nameAr => throw _privateConstructorUsedError;
  @JsonKey(name: 'description_en')
  String get descriptionEn => throw _privateConstructorUsedError;
  @JsonKey(name: 'description_ar')
  String get descriptionAr => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// prices
  @JsonKey(name: 'price_tax')
  int get priceTax => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_tax_sale')
  int get priceTaxSale => throw _privateConstructorUsedError;

  /// flags
  @JsonKey(name: 'on_sale')
  bool get onSale => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'name_en') String nameEn,
      @JsonKey(name: 'name_ar') String nameAr,
      @JsonKey(name: 'description_en') String descriptionEn,
      @JsonKey(name: 'description_ar') String descriptionAr,
      String image,
      @JsonKey(name: 'price_tax') int priceTax,
      @JsonKey(name: 'price_tax_sale') int priceTaxSale,
      @JsonKey(name: 'on_sale') bool onSale,
      int points});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameEn = null,
    Object? nameAr = null,
    Object? descriptionEn = null,
    Object? descriptionAr = null,
    Object? image = null,
    Object? priceTax = null,
    Object? priceTaxSale = null,
    Object? onSale = null,
    Object? points = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      nameAr: null == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionEn: null == descriptionEn
          ? _value.descriptionEn
          : descriptionEn // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionAr: null == descriptionAr
          ? _value.descriptionAr
          : descriptionAr // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      priceTax: null == priceTax
          ? _value.priceTax
          : priceTax // ignore: cast_nullable_to_non_nullable
              as int,
      priceTaxSale: null == priceTaxSale
          ? _value.priceTaxSale
          : priceTaxSale // ignore: cast_nullable_to_non_nullable
              as int,
      onSale: null == onSale
          ? _value.onSale
          : onSale // ignore: cast_nullable_to_non_nullable
              as bool,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'name_en') String nameEn,
      @JsonKey(name: 'name_ar') String nameAr,
      @JsonKey(name: 'description_en') String descriptionEn,
      @JsonKey(name: 'description_ar') String descriptionAr,
      String image,
      @JsonKey(name: 'price_tax') int priceTax,
      @JsonKey(name: 'price_tax_sale') int priceTaxSale,
      @JsonKey(name: 'on_sale') bool onSale,
      int points});
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameEn = null,
    Object? nameAr = null,
    Object? descriptionEn = null,
    Object? descriptionAr = null,
    Object? image = null,
    Object? priceTax = null,
    Object? priceTaxSale = null,
    Object? onSale = null,
    Object? points = null,
  }) {
    return _then(_$ProductModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      nameAr: null == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionEn: null == descriptionEn
          ? _value.descriptionEn
          : descriptionEn // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionAr: null == descriptionAr
          ? _value.descriptionAr
          : descriptionAr // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      priceTax: null == priceTax
          ? _value.priceTax
          : priceTax // ignore: cast_nullable_to_non_nullable
              as int,
      priceTaxSale: null == priceTaxSale
          ? _value.priceTaxSale
          : priceTaxSale // ignore: cast_nullable_to_non_nullable
              as int,
      onSale: null == onSale
          ? _value.onSale
          : onSale // ignore: cast_nullable_to_non_nullable
              as bool,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl extends _ProductModel {
  const _$ProductModelImpl(
      {required this.id,
      @JsonKey(name: 'name_en') required this.nameEn,
      @JsonKey(name: 'name_ar') required this.nameAr,
      @JsonKey(name: 'description_en') required this.descriptionEn,
      @JsonKey(name: 'description_ar') required this.descriptionAr,
      required this.image,
      @JsonKey(name: 'price_tax') required this.priceTax,
      @JsonKey(name: 'price_tax_sale') required this.priceTaxSale,
      @JsonKey(name: 'on_sale') required this.onSale,
      required this.points})
      : super._();

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'name_en')
  final String nameEn;
  @override
  @JsonKey(name: 'name_ar')
  final String nameAr;
  @override
  @JsonKey(name: 'description_en')
  final String descriptionEn;
  @override
  @JsonKey(name: 'description_ar')
  final String descriptionAr;
  @override
  final String image;

  /// prices
  @override
  @JsonKey(name: 'price_tax')
  final int priceTax;
  @override
  @JsonKey(name: 'price_tax_sale')
  final int priceTaxSale;

  /// flags
  @override
  @JsonKey(name: 'on_sale')
  final bool onSale;
  @override
  final int points;

  @override
  String toString() {
    return 'ProductModel(id: $id, nameEn: $nameEn, nameAr: $nameAr, descriptionEn: $descriptionEn, descriptionAr: $descriptionAr, image: $image, priceTax: $priceTax, priceTaxSale: $priceTaxSale, onSale: $onSale, points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.nameAr, nameAr) || other.nameAr == nameAr) &&
            (identical(other.descriptionEn, descriptionEn) ||
                other.descriptionEn == descriptionEn) &&
            (identical(other.descriptionAr, descriptionAr) ||
                other.descriptionAr == descriptionAr) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.priceTax, priceTax) ||
                other.priceTax == priceTax) &&
            (identical(other.priceTaxSale, priceTaxSale) ||
                other.priceTaxSale == priceTaxSale) &&
            (identical(other.onSale, onSale) || other.onSale == onSale) &&
            (identical(other.points, points) || other.points == points));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      nameEn,
      nameAr,
      descriptionEn,
      descriptionAr,
      image,
      priceTax,
      priceTaxSale,
      onSale,
      points);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel extends ProductModel {
  const factory _ProductModel(
      {required final int id,
      @JsonKey(name: 'name_en') required final String nameEn,
      @JsonKey(name: 'name_ar') required final String nameAr,
      @JsonKey(name: 'description_en') required final String descriptionEn,
      @JsonKey(name: 'description_ar') required final String descriptionAr,
      required final String image,
      @JsonKey(name: 'price_tax') required final int priceTax,
      @JsonKey(name: 'price_tax_sale') required final int priceTaxSale,
      @JsonKey(name: 'on_sale') required final bool onSale,
      required final int points}) = _$ProductModelImpl;
  const _ProductModel._() : super._();

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'name_en')
  String get nameEn;
  @override
  @JsonKey(name: 'name_ar')
  String get nameAr;
  @override
  @JsonKey(name: 'description_en')
  String get descriptionEn;
  @override
  @JsonKey(name: 'description_ar')
  String get descriptionAr;
  @override
  String get image;

  /// prices
  @override
  @JsonKey(name: 'price_tax')
  int get priceTax;
  @override
  @JsonKey(name: 'price_tax_sale')
  int get priceTaxSale;

  /// flags
  @override
  @JsonKey(name: 'on_sale')
  bool get onSale;
  @override
  int get points;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
