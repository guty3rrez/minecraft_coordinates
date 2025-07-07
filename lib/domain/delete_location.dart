//Similar pero recibe un string id
import 'package:minecraft_coordinates/domain/location_repository.dart';

class DeleteLocation {
  final LocationRepository repository;
  DeleteLocation(this.repository);

  Future<void> call(String id) {
    return repository.deleteLocation(id);
  }
}
