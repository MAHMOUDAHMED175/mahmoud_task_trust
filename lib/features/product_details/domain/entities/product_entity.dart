import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final int id;
  final String name;
  final String description;
  final String image;
  final int price;
  final int points;
  final bool onSale;

  const ProductEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.points,
    required this.onSale,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        image,
        price,
        points,
        onSale,
      ];
}
