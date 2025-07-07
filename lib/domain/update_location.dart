//Similar a add_location
import 'package:minecraft_coordinates/domain/location.dart';
import 'package:minecraft_coordinates/domain/location_repository.dart';

class UpdateLocation {
  final LocationRepository repository;
  UpdateLocation(this.repository);

  Future<void> call(Location location) {
    return repository.updateLocation(location);
  }
}
