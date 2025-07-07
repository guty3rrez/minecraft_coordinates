// lib/features/locations/data/models/location_model.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:minecraft_coordinates/domain/entities/location.dart';

class LocationModel extends Location {
  const LocationModel({
    super.id,
    required super.name,
    required super.x,
    required super.y,
    required super.z,
  });

  factory LocationModel.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return LocationModel(
      id: doc.id,
      name: data['name'],
      x: data['x'],
      y: data['y'],
      z: data['z'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {'name': name, 'x': x, 'y': y, 'z': z};
  }
}
