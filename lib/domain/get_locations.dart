import 'package:minecraft_coordinates/domain/location.dart';
import 'package:minecraft_coordinates/domain/location_repository.dart';

class GetLocations {
  final LocationRepository repository;
  GetLocations(this.repository);

  Stream<List<Location>> call() {
    return repository.getLocations();
  }
}
