// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'addon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductWithAddonsModel _$ProductWithAddonsModelFromJson(
    Map<String, dynamic> json) {
  return _ProductWithAddonsModel.fromJson(json);
}

/// @nodoc
mixin _$ProductWithAddonsModel {
  ProductDataModel get product => throw _privateConstructorUsedError;
  List<BlockModel> get blocks => throw _privateConstructorUsedError;

  /// Serializes this ProductWithAddonsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductWithAddonsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductWithAddonsModelCopyWith<ProductWithAddonsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductWithAddonsModelCopyWith<$Res> {
  factory $ProductWithAddonsModelCopyWith(ProductWithAddonsModel value,
          $Res Function(ProductWithAddonsModel) then) =
      _$ProductWithAddonsModelCopyWithImpl<$Res, ProductWithAddonsModel>;
  @useResult
  $Res call({ProductDataModel product, List<BlockModel> blocks});

  $ProductDataModelCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductWithAddonsModelCopyWithImpl<$Res,
        $Val extends ProductWithAddonsModel>
    implements $ProductWithAddonsModelCopyWith<$Res> {
  _$ProductWithAddonsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductWithAddonsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? blocks = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDataModel,
      blocks: null == blocks
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<BlockModel>,
    ) as $Val);
  }

  /// Create a copy of ProductWithAddonsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDataModelCopyWith<$Res> get product {
    return $ProductDataModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductWithAddonsModelImplCopyWith<$Res>
    implements $ProductWithAddonsModelCopyWith<$Res> {
  factory _$$ProductWithAddonsModelImplCopyWith(
          _$ProductWithAddonsModelImpl value,
          $Res Function(_$ProductWithAddonsModelImpl) then) =
      __$$ProductWithAddonsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductDataModel product, List<BlockModel> blocks});

  @override
  $ProductDataModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$ProductWithAddonsModelImplCopyWithImpl<$Res>
    extends _$ProductWithAddonsModelCopyWithImpl<$Res,
        _$ProductWithAddonsModelImpl>
    implements _$$ProductWithAddonsModelImplCopyWith<$Res> {
  __$$ProductWithAddonsModelImplCopyWithImpl(
      _$ProductWithAddonsModelImpl _value,
      $Res Function(_$ProductWithAddonsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductWithAddonsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? blocks = null,
  }) {
    return _then(_$ProductWithAddonsModelImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDataModel,
      blocks: null == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<BlockModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductWithAddonsModelImpl implements _ProductWithAddonsModel {
  const _$ProductWithAddonsModelImpl(
      {required this.product, required final List<BlockModel> blocks})
      : _blocks = blocks;

  factory _$ProductWithAddonsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductWithAddonsModelImplFromJson(json);

  @override
  final ProductDataModel product;
  final List<BlockModel> _blocks;
  @override
  List<BlockModel> get blocks {
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  @override
  String toString() {
    return 'ProductWithAddonsModel(product: $product, blocks: $blocks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductWithAddonsModelImpl &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality().equals(other._blocks, _blocks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, product, const DeepCollectionEquality().hash(_blocks));

  /// Create a copy of ProductWithAddonsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductWithAddonsModelImplCopyWith<_$ProductWithAddonsModelImpl>
      get copyWith => __$$ProductWithAddonsModelImplCopyWithImpl<
          _$ProductWithAddonsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductWithAddonsModelImplToJson(
      this,
    );
  }
}

abstract class _ProductWithAddonsModel implements ProductWithAddonsModel {
  const factory _ProductWithAddonsModel(
      {required final ProductDataModel product,
      required final List<BlockModel> blocks}) = _$ProductWithAddonsModelImpl;

  factory _ProductWithAddonsModel.fromJson(Map<String, dynamic> json) =
      _$ProductWithAddonsModelImpl.fromJson;

  @override
  ProductDataModel get product;
  @override
  List<BlockModel> get blocks;

  /// Create a copy of ProductWithAddonsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductWithAddonsModelImplCopyWith<_$ProductWithAddonsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductDataModel _$ProductDataModelFromJson(Map<String, dynamic> json) {
  return _ProductDataModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDataModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_ar')
  String get nameAr => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this ProductDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDataModelCopyWith<ProductDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataModelCopyWith<$Res> {
  factory $ProductDataModelCopyWith(
          ProductDataModel value, $Res Function(ProductDataModel) then) =
      _$ProductDataModelCopyWithImpl<$Res, ProductDataModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'name_ar') String nameAr,
      String price,
      String type});
}

/// @nodoc
class _$ProductDataModelCopyWithImpl<$Res, $Val extends ProductDataModel>
    implements $ProductDataModelCopyWith<$Res> {
  _$ProductDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? nameAr = null,
    Object? price = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameAr: null == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDataModelImplCopyWith<$Res>
    implements $ProductDataModelCopyWith<$Res> {
  factory _$$ProductDataModelImplCopyWith(_$ProductDataModelImpl value,
          $Res Function(_$ProductDataModelImpl) then) =
      __$$ProductDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'name_ar') String nameAr,
      String price,
      String type});
}

/// @nodoc
class __$$ProductDataModelImplCopyWithImpl<$Res>
    extends _$ProductDataModelCopyWithImpl<$Res, _$ProductDataModelImpl>
    implements _$$ProductDataModelImplCopyWith<$Res> {
  __$$ProductDataModelImplCopyWithImpl(_$ProductDataModelImpl _value,
      $Res Function(_$ProductDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? nameAr = null,
    Object? price = null,
    Object? type = null,
  }) {
    return _then(_$ProductDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameAr: null == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDataModelImpl implements _ProductDataModel {
  const _$ProductDataModelImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'name_ar') required this.nameAr,
      required this.price,
      required this.type});

  factory _$ProductDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDataModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'name_ar')
  final String nameAr;
  @override
  final String price;
  @override
  final String type;

  @override
  String toString() {
    return 'ProductDataModel(id: $id, name: $name, nameAr: $nameAr, price: $price, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameAr, nameAr) || other.nameAr == nameAr) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, nameAr, price, type);

  /// Create a copy of ProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDataModelImplCopyWith<_$ProductDataModelImpl> get copyWith =>
      __$$ProductDataModelImplCopyWithImpl<_$ProductDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDataModelImplToJson(
      this,
    );
  }
}

abstract class _ProductDataModel implements ProductDataModel {
  const factory _ProductDataModel(
      {required final int id,
      required final String name,
      @JsonKey(name: 'name_ar') required final String nameAr,
      required final String price,
      required final String type}) = _$ProductDataModelImpl;

  factory _ProductDataModel.fromJson(Map<String, dynamic> json) =
      _$ProductDataModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'name_ar')
  String get nameAr;
  @override
  String get price;
  @override
  String get type;

  /// Create a copy of ProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDataModelImplCopyWith<_$ProductDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BlockModel _$BlockModelFromJson(Map<String, dynamic> json) {
  return _BlockModel.fromJson(json);
}

/// @nodoc
mixin _$BlockModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_association')
  String get productAssociation => throw _privateConstructorUsedError;
  @JsonKey(name: 'exclude_products')
  String get excludeProducts => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_association')
  String get userAssociation => throw _privateConstructorUsedError;
  @JsonKey(name: 'exclude_users')
  String get excludeUsers => throw _privateConstructorUsedError;
  List<AddonModel> get addons => throw _privateConstructorUsedError;

  /// Serializes this BlockModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlockModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlockModelCopyWith<BlockModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockModelCopyWith<$Res> {
  factory $BlockModelCopyWith(
          BlockModel value, $Res Function(BlockModel) then) =
      _$BlockModelCopyWithImpl<$Res, BlockModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'product_association') String productAssociation,
      @JsonKey(name: 'exclude_products') String excludeProducts,
      @JsonKey(name: 'user_association') String userAssociation,
      @JsonKey(name: 'exclude_users') String excludeUsers,
      List<AddonModel> addons});
}

/// @nodoc
class _$BlockModelCopyWithImpl<$Res, $Val extends BlockModel>
    implements $BlockModelCopyWith<$Res> {
  _$BlockModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlockModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? productAssociation = null,
    Object? excludeProducts = null,
    Object? userAssociation = null,
    Object? excludeUsers = null,
    Object? addons = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      productAssociation: null == productAssociation
          ? _value.productAssociation
          : productAssociation // ignore: cast_nullable_to_non_nullable
              as String,
      excludeProducts: null == excludeProducts
          ? _value.excludeProducts
          : excludeProducts // ignore: cast_nullable_to_non_nullable
              as String,
      userAssociation: null == userAssociation
          ? _value.userAssociation
          : userAssociation // ignore: cast_nullable_to_non_nullable
              as String,
      excludeUsers: null == excludeUsers
          ? _value.excludeUsers
          : excludeUsers // ignore: cast_nullable_to_non_nullable
              as String,
      addons: null == addons
          ? _value.addons
          : addons // ignore: cast_nullable_to_non_nullable
              as List<AddonModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlockModelImplCopyWith<$Res>
    implements $BlockModelCopyWith<$Res> {
  factory _$$BlockModelImplCopyWith(
          _$BlockModelImpl value, $Res Function(_$BlockModelImpl) then) =
      __$$BlockModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'product_association') String productAssociation,
      @JsonKey(name: 'exclude_products') String excludeProducts,
      @JsonKey(name: 'user_association') String userAssociation,
      @JsonKey(name: 'exclude_users') String excludeUsers,
      List<AddonModel> addons});
}

/// @nodoc
class __$$BlockModelImplCopyWithImpl<$Res>
    extends _$BlockModelCopyWithImpl<$Res, _$BlockModelImpl>
    implements _$$BlockModelImplCopyWith<$Res> {
  __$$BlockModelImplCopyWithImpl(
      _$BlockModelImpl _value, $Res Function(_$BlockModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlockModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? productAssociation = null,
    Object? excludeProducts = null,
    Object? userAssociation = null,
    Object? excludeUsers = null,
    Object? addons = null,
  }) {
    return _then(_$BlockModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      productAssociation: null == productAssociation
          ? _value.productAssociation
          : productAssociation // ignore: cast_nullable_to_non_nullable
              as String,
      excludeProducts: null == excludeProducts
          ? _value.excludeProducts
          : excludeProducts // ignore: cast_nullable_to_non_nullable
              as String,
      userAssociation: null == userAssociation
          ? _value.userAssociation
          : userAssociation // ignore: cast_nullable_to_non_nullable
              as String,
      excludeUsers: null == excludeUsers
          ? _value.excludeUsers
          : excludeUsers // ignore: cast_nullable_to_non_nullable
              as String,
      addons: null == addons
          ? _value._addons
          : addons // ignore: cast_nullable_to_non_nullable
              as List<AddonModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlockModelImpl implements _BlockModel {
  const _$BlockModelImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'product_association') required this.productAssociation,
      @JsonKey(name: 'exclude_products') required this.excludeProducts,
      @JsonKey(name: 'user_association') required this.userAssociation,
      @JsonKey(name: 'exclude_users') required this.excludeUsers,
      required final List<AddonModel> addons})
      : _addons = addons;

  factory _$BlockModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlockModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'product_association')
  final String productAssociation;
  @override
  @JsonKey(name: 'exclude_products')
  final String excludeProducts;
  @override
  @JsonKey(name: 'user_association')
  final String userAssociation;
  @override
  @JsonKey(name: 'exclude_users')
  final String excludeUsers;
  final List<AddonModel> _addons;
  @override
  List<AddonModel> get addons {
    if (_addons is EqualUnmodifiableListView) return _addons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addons);
  }

  @override
  String toString() {
    return 'BlockModel(id: $id, name: $name, productAssociation: $productAssociation, excludeProducts: $excludeProducts, userAssociation: $userAssociation, excludeUsers: $excludeUsers, addons: $addons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.productAssociation, productAssociation) ||
                other.productAssociation == productAssociation) &&
            (identical(other.excludeProducts, excludeProducts) ||
                other.excludeProducts == excludeProducts) &&
            (identical(other.userAssociation, userAssociation) ||
                other.userAssociation == userAssociation) &&
            (identical(other.excludeUsers, excludeUsers) ||
                other.excludeUsers == excludeUsers) &&
            const DeepCollectionEquality().equals(other._addons, _addons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      productAssociation,
      excludeProducts,
      userAssociation,
      excludeUsers,
      const DeepCollectionEquality().hash(_addons));

  /// Create a copy of BlockModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockModelImplCopyWith<_$BlockModelImpl> get copyWith =>
      __$$BlockModelImplCopyWithImpl<_$BlockModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlockModelImplToJson(
      this,
    );
  }
}

abstract class _BlockModel implements BlockModel {
  const factory _BlockModel(
      {required final String id,
      required final String name,
      @JsonKey(name: 'product_association')
      required final String productAssociation,
      @JsonKey(name: 'exclude_products') required final String excludeProducts,
      @JsonKey(name: 'user_association') required final String userAssociation,
      @JsonKey(name: 'exclude_users') required final String excludeUsers,
      required final List<AddonModel> addons}) = _$BlockModelImpl;

  factory _BlockModel.fromJson(Map<String, dynamic> json) =
      _$BlockModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'product_association')
  String get productAssociation;
  @override
  @JsonKey(name: 'exclude_products')
  String get excludeProducts;
  @override
  @JsonKey(name: 'user_association')
  String get userAssociation;
  @override
  @JsonKey(name: 'exclude_users')
  String get excludeUsers;
  @override
  List<AddonModel> get addons;

  /// Create a copy of BlockModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlockModelImplCopyWith<_$BlockModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddonModel _$AddonModelFromJson(Map<String, dynamic> json) {
  return _AddonModel.fromJson(json);
}

/// @nodoc
mixin _$AddonModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_ar')
  String get titleAr => throw _privateConstructorUsedError;
  bool get required => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsMultiChoise')
  bool get isMultiChoice => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_max_rules')
  MinMaxRulesModel get minMaxRules => throw _privateConstructorUsedError;
  List<AddonOptionModel> get options => throw _privateConstructorUsedError;

  /// Serializes this AddonModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddonModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddonModelCopyWith<AddonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddonModelCopyWith<$Res> {
  factory $AddonModelCopyWith(
          AddonModel value, $Res Function(AddonModel) then) =
      _$AddonModelCopyWithImpl<$Res, AddonModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'title_ar') String titleAr,
      bool required,
      @JsonKey(name: 'IsMultiChoise') bool isMultiChoice,
      @JsonKey(name: 'min_max_rules') MinMaxRulesModel minMaxRules,
      List<AddonOptionModel> options});

  $MinMaxRulesModelCopyWith<$Res> get minMaxRules;
}

/// @nodoc
class _$AddonModelCopyWithImpl<$Res, $Val extends AddonModel>
    implements $AddonModelCopyWith<$Res> {
  _$AddonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddonModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? titleAr = null,
    Object? required = null,
    Object? isMultiChoice = null,
    Object? minMaxRules = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleAr: null == titleAr
          ? _value.titleAr
          : titleAr // ignore: cast_nullable_to_non_nullable
              as String,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      isMultiChoice: null == isMultiChoice
          ? _value.isMultiChoice
          : isMultiChoice // ignore: cast_nullable_to_non_nullable
              as bool,
      minMaxRules: null == minMaxRules
          ? _value.minMaxRules
          : minMaxRules // ignore: cast_nullable_to_non_nullable
              as MinMaxRulesModel,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<AddonOptionModel>,
    ) as $Val);
  }

  /// Create a copy of AddonModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MinMaxRulesModelCopyWith<$Res> get minMaxRules {
    return $MinMaxRulesModelCopyWith<$Res>(_value.minMaxRules, (value) {
      return _then(_value.copyWith(minMaxRules: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddonModelImplCopyWith<$Res>
    implements $AddonModelCopyWith<$Res> {
  factory _$$AddonModelImplCopyWith(
          _$AddonModelImpl value, $Res Function(_$AddonModelImpl) then) =
      __$$AddonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'title_ar') String titleAr,
      bool required,
      @JsonKey(name: 'IsMultiChoise') bool isMultiChoice,
      @JsonKey(name: 'min_max_rules') MinMaxRulesModel minMaxRules,
      List<AddonOptionModel> options});

  @override
  $MinMaxRulesModelCopyWith<$Res> get minMaxRules;
}

/// @nodoc
class __$$AddonModelImplCopyWithImpl<$Res>
    extends _$AddonModelCopyWithImpl<$Res, _$AddonModelImpl>
    implements _$$AddonModelImplCopyWith<$Res> {
  __$$AddonModelImplCopyWithImpl(
      _$AddonModelImpl _value, $Res Function(_$AddonModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddonModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? titleAr = null,
    Object? required = null,
    Object? isMultiChoice = null,
    Object? minMaxRules = null,
    Object? options = null,
  }) {
    return _then(_$AddonModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleAr: null == titleAr
          ? _value.titleAr
          : titleAr // ignore: cast_nullable_to_non_nullable
              as String,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      isMultiChoice: null == isMultiChoice
          ? _value.isMultiChoice
          : isMultiChoice // ignore: cast_nullable_to_non_nullable
              as bool,
      minMaxRules: null == minMaxRules
          ? _value.minMaxRules
          : minMaxRules // ignore: cast_nullable_to_non_nullable
              as MinMaxRulesModel,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<AddonOptionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddonModelImpl implements _AddonModel {
  const _$AddonModelImpl(
      {required this.id,
      required this.title,
      @JsonKey(name: 'title_ar') required this.titleAr,
      required this.required,
      @JsonKey(name: 'IsMultiChoise') required this.isMultiChoice,
      @JsonKey(name: 'min_max_rules') required this.minMaxRules,
      required final List<AddonOptionModel> options})
      : _options = options;

  factory _$AddonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddonModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: 'title_ar')
  final String titleAr;
  @override
  final bool required;
  @override
  @JsonKey(name: 'IsMultiChoise')
  final bool isMultiChoice;
  @override
  @JsonKey(name: 'min_max_rules')
  final MinMaxRulesModel minMaxRules;
  final List<AddonOptionModel> _options;
  @override
  List<AddonOptionModel> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'AddonModel(id: $id, title: $title, titleAr: $titleAr, required: $required, isMultiChoice: $isMultiChoice, minMaxRules: $minMaxRules, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddonModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleAr, titleAr) || other.titleAr == titleAr) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.isMultiChoice, isMultiChoice) ||
                other.isMultiChoice == isMultiChoice) &&
            (identical(other.minMaxRules, minMaxRules) ||
                other.minMaxRules == minMaxRules) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      titleAr,
      required,
      isMultiChoice,
      minMaxRules,
      const DeepCollectionEquality().hash(_options));

  /// Create a copy of AddonModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddonModelImplCopyWith<_$AddonModelImpl> get copyWith =>
      __$$AddonModelImplCopyWithImpl<_$AddonModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddonModelImplToJson(
      this,
    );
  }
}

abstract class _AddonModel implements AddonModel {
  const factory _AddonModel(
      {required final int id,
      required final String title,
      @JsonKey(name: 'title_ar') required final String titleAr,
      required final bool required,
      @JsonKey(name: 'IsMultiChoise') required final bool isMultiChoice,
      @JsonKey(name: 'min_max_rules')
      required final MinMaxRulesModel minMaxRules,
      required final List<AddonOptionModel> options}) = _$AddonModelImpl;

  factory _AddonModel.fromJson(Map<String, dynamic> json) =
      _$AddonModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'title_ar')
  String get titleAr;
  @override
  bool get required;
  @override
  @JsonKey(name: 'IsMultiChoise')
  bool get isMultiChoice;
  @override
  @JsonKey(name: 'min_max_rules')
  MinMaxRulesModel get minMaxRules;
  @override
  List<AddonOptionModel> get options;

  /// Create a copy of AddonModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddonModelImplCopyWith<_$AddonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MinMaxRulesModel _$MinMaxRulesModelFromJson(Map<String, dynamic> json) {
  return _MinMaxRulesModel.fromJson(json);
}

/// @nodoc
mixin _$MinMaxRulesModel {
  int get min => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  int get exact => throw _privateConstructorUsedError;

  /// Serializes this MinMaxRulesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MinMaxRulesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MinMaxRulesModelCopyWith<MinMaxRulesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinMaxRulesModelCopyWith<$Res> {
  factory $MinMaxRulesModelCopyWith(
          MinMaxRulesModel value, $Res Function(MinMaxRulesModel) then) =
      _$MinMaxRulesModelCopyWithImpl<$Res, MinMaxRulesModel>;
  @useResult
  $Res call({int min, int max, int exact});
}

/// @nodoc
class _$MinMaxRulesModelCopyWithImpl<$Res, $Val extends MinMaxRulesModel>
    implements $MinMaxRulesModelCopyWith<$Res> {
  _$MinMaxRulesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MinMaxRulesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
    Object? exact = null,
  }) {
    return _then(_value.copyWith(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
      exact: null == exact
          ? _value.exact
          : exact // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MinMaxRulesModelImplCopyWith<$Res>
    implements $MinMaxRulesModelCopyWith<$Res> {
  factory _$$MinMaxRulesModelImplCopyWith(_$MinMaxRulesModelImpl value,
          $Res Function(_$MinMaxRulesModelImpl) then) =
      __$$MinMaxRulesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int min, int max, int exact});
}

/// @nodoc
class __$$MinMaxRulesModelImplCopyWithImpl<$Res>
    extends _$MinMaxRulesModelCopyWithImpl<$Res, _$MinMaxRulesModelImpl>
    implements _$$MinMaxRulesModelImplCopyWith<$Res> {
  __$$MinMaxRulesModelImplCopyWithImpl(_$MinMaxRulesModelImpl _value,
      $Res Function(_$MinMaxRulesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MinMaxRulesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
    Object? exact = null,
  }) {
    return _then(_$MinMaxRulesModelImpl(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
      exact: null == exact
          ? _value.exact
          : exact // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MinMaxRulesModelImpl implements _MinMaxRulesModel {
  const _$MinMaxRulesModelImpl(
      {required this.min, required this.max, required this.exact});

  factory _$MinMaxRulesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MinMaxRulesModelImplFromJson(json);

  @override
  final int min;
  @override
  final int max;
  @override
  final int exact;

  @override
  String toString() {
    return 'MinMaxRulesModel(min: $min, max: $max, exact: $exact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinMaxRulesModelImpl &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.exact, exact) || other.exact == exact));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, min, max, exact);

  /// Create a copy of MinMaxRulesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MinMaxRulesModelImplCopyWith<_$MinMaxRulesModelImpl> get copyWith =>
      __$$MinMaxRulesModelImplCopyWithImpl<_$MinMaxRulesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MinMaxRulesModelImplToJson(
      this,
    );
  }
}

abstract class _MinMaxRulesModel implements MinMaxRulesModel {
  const factory _MinMaxRulesModel(
      {required final int min,
      required final int max,
      required final int exact}) = _$MinMaxRulesModelImpl;

  factory _MinMaxRulesModel.fromJson(Map<String, dynamic> json) =
      _$MinMaxRulesModelImpl.fromJson;

  @override
  int get min;
  @override
  int get max;
  @override
  int get exact;

  /// Create a copy of MinMaxRulesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MinMaxRulesModelImplCopyWith<_$MinMaxRulesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddonOptionModel _$AddonOptionModelFromJson(Map<String, dynamic> json) {
  return _AddonOptionModel.fromJson(json);
}

/// @nodoc
mixin _$AddonOptionModel {
  @JsonKey(name: 'selected_by_default')
  bool get selectedByDefault => throw _privateConstructorUsedError;
  bool get required => throw _privateConstructorUsedError;
  @JsonKey(name: 'addon_enabled')
  bool get addonEnabled => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _stringFromJson)
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'label_ar', fromJson: _stringFromJson)
  String get labelAr => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _priceFromJson, toJson: _priceToJson)
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_type', fromJson: _stringFromJson)
  String get priceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_method', fromJson: _stringFromJson)
  String get priceMethod => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _stringFromJson)
  String get tooltip => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _stringFromJson)
  String get description => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _stringFromJson)
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'show_image')
  bool get showImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'label_in_cart')
  bool get labelInCart => throw _privateConstructorUsedError;
  @JsonKey(name: 'label_in_cart_opt', fromJson: _stringFromJson)
  String get labelInCartOpt => throw _privateConstructorUsedError;

  /// Serializes this AddonOptionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddonOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddonOptionModelCopyWith<AddonOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddonOptionModelCopyWith<$Res> {
  factory $AddonOptionModelCopyWith(
          AddonOptionModel value, $Res Function(AddonOptionModel) then) =
      _$AddonOptionModelCopyWithImpl<$Res, AddonOptionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'selected_by_default') bool selectedByDefault,
      bool required,
      @JsonKey(name: 'addon_enabled') bool addonEnabled,
      @JsonKey(fromJson: _stringFromJson) String label,
      @JsonKey(name: 'label_ar', fromJson: _stringFromJson) String labelAr,
      @JsonKey(fromJson: _priceFromJson, toJson: _priceToJson) String price,
      @JsonKey(name: 'price_type', fromJson: _stringFromJson) String priceType,
      @JsonKey(name: 'price_method', fromJson: _stringFromJson)
      String priceMethod,
      @JsonKey(fromJson: _stringFromJson) String tooltip,
      @JsonKey(fromJson: _stringFromJson) String description,
      @JsonKey(fromJson: _stringFromJson) String image,
      @JsonKey(name: 'show_image') bool showImage,
      @JsonKey(name: 'label_in_cart') bool labelInCart,
      @JsonKey(name: 'label_in_cart_opt', fromJson: _stringFromJson)
      String labelInCartOpt});
}

/// @nodoc
class _$AddonOptionModelCopyWithImpl<$Res, $Val extends AddonOptionModel>
    implements $AddonOptionModelCopyWith<$Res> {
  _$AddonOptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddonOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedByDefault = null,
    Object? required = null,
    Object? addonEnabled = null,
    Object? label = null,
    Object? labelAr = null,
    Object? price = null,
    Object? priceType = null,
    Object? priceMethod = null,
    Object? tooltip = null,
    Object? description = null,
    Object? image = null,
    Object? showImage = null,
    Object? labelInCart = null,
    Object? labelInCartOpt = null,
  }) {
    return _then(_value.copyWith(
      selectedByDefault: null == selectedByDefault
          ? _value.selectedByDefault
          : selectedByDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      addonEnabled: null == addonEnabled
          ? _value.addonEnabled
          : addonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      labelAr: null == labelAr
          ? _value.labelAr
          : labelAr // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      priceType: null == priceType
          ? _value.priceType
          : priceType // ignore: cast_nullable_to_non_nullable
              as String,
      priceMethod: null == priceMethod
          ? _value.priceMethod
          : priceMethod // ignore: cast_nullable_to_non_nullable
              as String,
      tooltip: null == tooltip
          ? _value.tooltip
          : tooltip // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      showImage: null == showImage
          ? _value.showImage
          : showImage // ignore: cast_nullable_to_non_nullable
              as bool,
      labelInCart: null == labelInCart
          ? _value.labelInCart
          : labelInCart // ignore: cast_nullable_to_non_nullable
              as bool,
      labelInCartOpt: null == labelInCartOpt
          ? _value.labelInCartOpt
          : labelInCartOpt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddonOptionModelImplCopyWith<$Res>
    implements $AddonOptionModelCopyWith<$Res> {
  factory _$$AddonOptionModelImplCopyWith(_$AddonOptionModelImpl value,
          $Res Function(_$AddonOptionModelImpl) then) =
      __$$AddonOptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'selected_by_default') bool selectedByDefault,
      bool required,
      @JsonKey(name: 'addon_enabled') bool addonEnabled,
      @JsonKey(fromJson: _stringFromJson) String label,
      @JsonKey(name: 'label_ar', fromJson: _stringFromJson) String labelAr,
      @JsonKey(fromJson: _priceFromJson, toJson: _priceToJson) String price,
      @JsonKey(name: 'price_type', fromJson: _stringFromJson) String priceType,
      @JsonKey(name: 'price_method', fromJson: _stringFromJson)
      String priceMethod,
      @JsonKey(fromJson: _stringFromJson) String tooltip,
      @JsonKey(fromJson: _stringFromJson) String description,
      @JsonKey(fromJson: _stringFromJson) String image,
      @JsonKey(name: 'show_image') bool showImage,
      @JsonKey(name: 'label_in_cart') bool labelInCart,
      @JsonKey(name: 'label_in_cart_opt', fromJson: _stringFromJson)
      String labelInCartOpt});
}

/// @nodoc
class __$$AddonOptionModelImplCopyWithImpl<$Res>
    extends _$AddonOptionModelCopyWithImpl<$Res, _$AddonOptionModelImpl>
    implements _$$AddonOptionModelImplCopyWith<$Res> {
  __$$AddonOptionModelImplCopyWithImpl(_$AddonOptionModelImpl _value,
      $Res Function(_$AddonOptionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddonOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedByDefault = null,
    Object? required = null,
    Object? addonEnabled = null,
    Object? label = null,
    Object? labelAr = null,
    Object? price = null,
    Object? priceType = null,
    Object? priceMethod = null,
    Object? tooltip = null,
    Object? description = null,
    Object? image = null,
    Object? showImage = null,
    Object? labelInCart = null,
    Object? labelInCartOpt = null,
  }) {
    return _then(_$AddonOptionModelImpl(
      selectedByDefault: null == selectedByDefault
          ? _value.selectedByDefault
          : selectedByDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      addonEnabled: null == addonEnabled
          ? _value.addonEnabled
          : addonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      labelAr: null == labelAr
          ? _value.labelAr
          : labelAr // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      priceType: null == priceType
          ? _value.priceType
          : priceType // ignore: cast_nullable_to_non_nullable
              as String,
      priceMethod: null == priceMethod
          ? _value.priceMethod
          : priceMethod // ignore: cast_nullable_to_non_nullable
              as String,
      tooltip: null == tooltip
          ? _value.tooltip
          : tooltip // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      showImage: null == showImage
          ? _value.showImage
          : showImage // ignore: cast_nullable_to_non_nullable
              as bool,
      labelInCart: null == labelInCart
          ? _value.labelInCart
          : labelInCart // ignore: cast_nullable_to_non_nullable
              as bool,
      labelInCartOpt: null == labelInCartOpt
          ? _value.labelInCartOpt
          : labelInCartOpt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddonOptionModelImpl implements _AddonOptionModel {
  const _$AddonOptionModelImpl(
      {@JsonKey(name: 'selected_by_default') required this.selectedByDefault,
      required this.required,
      @JsonKey(name: 'addon_enabled') required this.addonEnabled,
      @JsonKey(fromJson: _stringFromJson) required this.label,
      @JsonKey(name: 'label_ar', fromJson: _stringFromJson)
      required this.labelAr,
      @JsonKey(fromJson: _priceFromJson, toJson: _priceToJson)
      required this.price,
      @JsonKey(name: 'price_type', fromJson: _stringFromJson)
      required this.priceType,
      @JsonKey(name: 'price_method', fromJson: _stringFromJson)
      required this.priceMethod,
      @JsonKey(fromJson: _stringFromJson) required this.tooltip,
      @JsonKey(fromJson: _stringFromJson) required this.description,
      @JsonKey(fromJson: _stringFromJson) required this.image,
      @JsonKey(name: 'show_image') required this.showImage,
      @JsonKey(name: 'label_in_cart') required this.labelInCart,
      @JsonKey(name: 'label_in_cart_opt', fromJson: _stringFromJson)
      required this.labelInCartOpt});

  factory _$AddonOptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddonOptionModelImplFromJson(json);

  @override
  @JsonKey(name: 'selected_by_default')
  final bool selectedByDefault;
  @override
  final bool required;
  @override
  @JsonKey(name: 'addon_enabled')
  final bool addonEnabled;
  @override
  @JsonKey(fromJson: _stringFromJson)
  final String label;
  @override
  @JsonKey(name: 'label_ar', fromJson: _stringFromJson)
  final String labelAr;
  @override
  @JsonKey(fromJson: _priceFromJson, toJson: _priceToJson)
  final String price;
  @override
  @JsonKey(name: 'price_type', fromJson: _stringFromJson)
  final String priceType;
  @override
  @JsonKey(name: 'price_method', fromJson: _stringFromJson)
  final String priceMethod;
  @override
  @JsonKey(fromJson: _stringFromJson)
  final String tooltip;
  @override
  @JsonKey(fromJson: _stringFromJson)
  final String description;
  @override
  @JsonKey(fromJson: _stringFromJson)
  final String image;
  @override
  @JsonKey(name: 'show_image')
  final bool showImage;
  @override
  @JsonKey(name: 'label_in_cart')
  final bool labelInCart;
  @override
  @JsonKey(name: 'label_in_cart_opt', fromJson: _stringFromJson)
  final String labelInCartOpt;

  @override
  String toString() {
    return 'AddonOptionModel(selectedByDefault: $selectedByDefault, required: $required, addonEnabled: $addonEnabled, label: $label, labelAr: $labelAr, price: $price, priceType: $priceType, priceMethod: $priceMethod, tooltip: $tooltip, description: $description, image: $image, showImage: $showImage, labelInCart: $labelInCart, labelInCartOpt: $labelInCartOpt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddonOptionModelImpl &&
            (identical(other.selectedByDefault, selectedByDefault) ||
                other.selectedByDefault == selectedByDefault) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.addonEnabled, addonEnabled) ||
                other.addonEnabled == addonEnabled) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.labelAr, labelAr) || other.labelAr == labelAr) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceType, priceType) ||
                other.priceType == priceType) &&
            (identical(other.priceMethod, priceMethod) ||
                other.priceMethod == priceMethod) &&
            (identical(other.tooltip, tooltip) || other.tooltip == tooltip) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.showImage, showImage) ||
                other.showImage == showImage) &&
            (identical(other.labelInCart, labelInCart) ||
                other.labelInCart == labelInCart) &&
            (identical(other.labelInCartOpt, labelInCartOpt) ||
                other.labelInCartOpt == labelInCartOpt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedByDefault,
      required,
      addonEnabled,
      label,
      labelAr,
      price,
      priceType,
      priceMethod,
      tooltip,
      description,
      image,
      showImage,
      labelInCart,
      labelInCartOpt);

  /// Create a copy of AddonOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddonOptionModelImplCopyWith<_$AddonOptionModelImpl> get copyWith =>
      __$$AddonOptionModelImplCopyWithImpl<_$AddonOptionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddonOptionModelImplToJson(
      this,
    );
  }
}

abstract class _AddonOptionModel implements AddonOptionModel {
  const factory _AddonOptionModel(
      {@JsonKey(name: 'selected_by_default')
      required final bool selectedByDefault,
      required final bool required,
      @JsonKey(name: 'addon_enabled') required final bool addonEnabled,
      @JsonKey(fromJson: _stringFromJson) required final String label,
      @JsonKey(name: 'label_ar', fromJson: _stringFromJson)
      required final String labelAr,
      @JsonKey(fromJson: _priceFromJson, toJson: _priceToJson)
      required final String price,
      @JsonKey(name: 'price_type', fromJson: _stringFromJson)
      required final String priceType,
      @JsonKey(name: 'price_method', fromJson: _stringFromJson)
      required final String priceMethod,
      @JsonKey(fromJson: _stringFromJson) required final String tooltip,
      @JsonKey(fromJson: _stringFromJson) required final String description,
      @JsonKey(fromJson: _stringFromJson) required final String image,
      @JsonKey(name: 'show_image') required final bool showImage,
      @JsonKey(name: 'label_in_cart') required final bool labelInCart,
      @JsonKey(name: 'label_in_cart_opt', fromJson: _stringFromJson)
      required final String labelInCartOpt}) = _$AddonOptionModelImpl;

  factory _AddonOptionModel.fromJson(Map<String, dynamic> json) =
      _$AddonOptionModelImpl.fromJson;

  @override
  @JsonKey(name: 'selected_by_default')
  bool get selectedByDefault;
  @override
  bool get required;
  @override
  @JsonKey(name: 'addon_enabled')
  bool get addonEnabled;
  @override
  @JsonKey(fromJson: _stringFromJson)
  String get label;
  @override
  @JsonKey(name: 'label_ar', fromJson: _stringFromJson)
  String get labelAr;
  @override
  @JsonKey(fromJson: _priceFromJson, toJson: _priceToJson)
  String get price;
  @override
  @JsonKey(name: 'price_type', fromJson: _stringFromJson)
  String get priceType;
  @override
  @JsonKey(name: 'price_method', fromJson: _stringFromJson)
  String get priceMethod;
  @override
  @JsonKey(fromJson: _stringFromJson)
  String get tooltip;
  @override
  @JsonKey(fromJson: _stringFromJson)
  String get description;
  @override
  @JsonKey(fromJson: _stringFromJson)
  String get image;
  @override
  @JsonKey(name: 'show_image')
  bool get showImage;
  @override
  @JsonKey(name: 'label_in_cart')
  bool get labelInCart;
  @override
  @JsonKey(name: 'label_in_cart_opt', fromJson: _stringFromJson)
  String get labelInCartOpt;

  /// Create a copy of AddonOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddonOptionModelImplCopyWith<_$AddonOptionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
