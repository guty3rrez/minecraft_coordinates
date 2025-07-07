//Similar a add_location
import 'package:minecraft_coordinates/domain/entities/location.dart';
import 'package:minecraft_coordinates/domain/repositories/location_repository.dart';

class UpdateLocation {
  final LocationRepository repository;
  UpdateLocation(this.repository);

  Future<void> call(Location location) {
    return repository.updateLocation(location);
  }
}
