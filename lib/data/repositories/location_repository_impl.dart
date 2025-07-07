// lib/features/locations/data/repositories/location_repository_impl.dart
import 'package:minecraft_coordinates/data/datasources/location_remote_datasource.dart';
import 'package:minecraft_coordinates/data/models/location_model.dart';
import 'package:minecraft_coordinates/domain/entities/location.dart';
import 'package:minecraft_coordinates/domain/repositories/location_repository.dart';

class LocationRepositoryImpl implements LocationRepository {
  final LocationRemoteDataSource remoteDataSource;

  LocationRepositoryImpl({required this.remoteDataSource});

  @override
  Stream<List<Location>> getLocations() {
    // El datasource devuelve un Stream<List<LocationModel>>
    // y lo devolvemos como Stream<List<Location>> como pide el dominio.
    return remoteDataSource.getLocations();
  }

  @override
  Future<void> addLocation(Location location) {
    // Convertimos la entidad de dominio a un modelo de datos antes de enviarlo.
    final locationModel = LocationModel(
      name: location.name,
      x: location.x,
      y: location.y,
      z: location.z,
    );
    return remoteDataSource.addLocation(locationModel);
  }

  @override
  Future<void> updateLocation(Location location) {
    final locationModel = LocationModel(
      id: location.id,
      name: location.name,
      x: location.x,
      y: location.y,
      z: location.z,
    );
    return remoteDataSource.updateLocation(locationModel);
  }

  @override
  Future<void> deleteLocation(String id) {
    return remoteDataSource.deleteLocation(id);
  }
}
