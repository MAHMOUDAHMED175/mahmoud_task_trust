import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final int id;
  final String name;
  final String description;
  final String price;
  final String image;

  const ProductEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  @override
  List<Object?> get props => [id, name, description, price, image];
}
