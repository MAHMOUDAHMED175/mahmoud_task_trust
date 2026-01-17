import 'package:equatable/equatable.dart';

// lib/features/product/domain/entities/product_entity.dart

class ProductEntity {
  final int id;
  final String name;
  final String description;
  final String image;
  final int price;
  final int points;
  final bool onSale;

  ProductEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.points,
    required this.onSale,
  });
}
