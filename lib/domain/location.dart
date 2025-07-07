// lib/features/locations/domain/entities/location.dart
import 'package:equatable/equatable.dart';

class Location extends Equatable {
  final String? id;
  final String name;
  final int x;
  final int y;
  final int z;

  const Location({
    this.id,
    required this.name,
    required this.x,
    required this.y,
    required this.z,
  });

  @override
  List<Object?> get props => [id, name, x, y, z];
}
