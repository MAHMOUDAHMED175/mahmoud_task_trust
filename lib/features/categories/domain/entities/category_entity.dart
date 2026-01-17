import 'package:equatable/equatable.dart';
import 'package:mahmoud_task_trust/features/product_details/domain/entities/product_entity.dart';

class CategoryEntity extends Equatable {
  final int id;
  final String name;
  final String image;
  final List<ProductEntity> products;

  const CategoryEntity({
    required this.id,
    required this.name,
    required this.image,
    required this.products,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        image,
        products,
      ];
}
