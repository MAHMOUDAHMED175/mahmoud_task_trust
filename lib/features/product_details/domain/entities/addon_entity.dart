import 'package:equatable/equatable.dart';
// lib/features/product/domain/entities/product_entity.dart

class AddonEntity {
  final int id;
  final String title;
  final bool required;
  final bool isMultiChoice;
  final MinMaxRulesEntity minMaxRules;
  final List<AddonOptionEntity> options;

  AddonEntity({
    required this.id,
    required this.title,
    required this.required,
    required this.isMultiChoice,
    required this.minMaxRules,
    required this.options,
  });
}

class MinMaxRulesEntity {
  final int min;
  final int max;
  final int exact;

  MinMaxRulesEntity({
    required this.min,
    required this.max,
    required this.exact,
  });
}

class AddonOptionEntity {
  final String label;
  final bool selectedByDefault;

  AddonOptionEntity({
    required this.label,
    required this.selectedByDefault,
  });
}
