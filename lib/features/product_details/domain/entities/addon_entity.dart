import 'package:equatable/equatable.dart';

class AddonEntity extends Equatable {
  final int id;
  final String name;
  final String price;

  const AddonEntity({
    required this.id,
    required this.name,
    required this.price,
  });

  @override
  List<Object?> get props => [id, name, price];
}
