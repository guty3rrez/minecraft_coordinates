// lib/features/locations/domain/repositories/location_repository.dart
import 'package:minecraft_coordinates/domain/entities/location.dart';

abstract class LocationRepository {
  Stream<List<Location>> getLocations();
  Future<void> addLocation(Location location);
  Future<void> updateLocation(Location location);
  Future<void> deleteLocation(String id);
}
