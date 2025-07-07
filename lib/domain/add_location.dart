import 'package:minecraft_coordinates/domain/location.dart';
import 'package:minecraft_coordinates/domain/location_repository.dart';

class AddLocation {
  final LocationRepository repository;
  AddLocation(this.repository);

  Future<void> call(Location location) {
    return repository.addLocation(location);
  }
}
