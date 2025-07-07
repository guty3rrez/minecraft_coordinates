import 'package:minecraft_coordinates/domain/entities/location.dart';
import 'package:minecraft_coordinates/domain/repositories/location_repository.dart';

class AddLocation {
  final LocationRepository repository;
  AddLocation(this.repository);

  Future<void> call(Location location) {
    return repository.addLocation(location);
  }
}
