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

AddonModel _$AddonModelFromJson(Map<String, dynamic> json) {
  return _AddonModel.fromJson(json);
}

/// @nodoc
mixin _$AddonModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;

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
  $Res call({int id, String name, String price});
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
    Object? name = null,
    Object? price = null,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
  $Res call({int id, String name, String price});
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
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_$AddonModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddonModelImpl extends _AddonModel {
  const _$AddonModelImpl(
      {required this.id, required this.name, required this.price})
      : super._();

  factory _$AddonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddonModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String price;

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

abstract class _AddonModel extends AddonModel {
  const factory _AddonModel(
      {required final int id,
      required final String name,
      required final String price}) = _$AddonModelImpl;
  const _AddonModel._() : super._();

  factory _AddonModel.fromJson(Map<String, dynamic> json) =
      _$AddonModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get price;

  /// Create a copy of AddonModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddonModelImplCopyWith<_$AddonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
