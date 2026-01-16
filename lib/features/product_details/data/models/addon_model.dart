import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/addon_entity.dart';

part 'addon_model.freezed.dart';
part 'addon_model.g.dart';

@freezed
class AddonModel extends AddonEntity with _$AddonModel {
  const factory AddonModel({
    required int id,
    required String name,
    required String price,
  }) = _AddonModel;

  const AddonModel._() : super(id: 0, name: '', price: '');

  factory AddonModel.fromJson(Map<String, dynamic> json) =>
      _$AddonModelFromJson(json);
}
