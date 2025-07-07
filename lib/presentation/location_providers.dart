// lib/features/locations/presentation/providers/location_providers.dart
import 'package:minecraft_coordinates/domain/location.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:minecraft_coordinates/presentation/firebase_provider.dart';
import 'package:minecraft_coordinates/data/location_remote_datasource.dart';
import 'package:minecraft_coordinates/data/location_repository_impl.dart';
import 'package:minecraft_coordinates/domain/location_repository.dart';
import 'package:minecraft_coordinates/domain/add_location.dart';
import 'package:minecraft_coordinates/domain/delete_location.dart';
import 'package:minecraft_coordinates/domain/get_locations.dart';
import 'package:minecraft_coordinates/domain/update_location.dart';

part 'location_providers.g.dart'; // El generador creará este archivo

// --- Providers para la Capa de Datos ---
@riverpod
LocationRemoteDataSource locationRemoteDataSource(
  LocationRemoteDataSourceRef ref,
) {
  return LocationRemoteDataSourceImpl(ref.watch(firebaseFirestoreProvider));
}

@riverpod
LocationRepository locationRepository(LocationRepositoryRef ref) {
  return LocationRepositoryImpl(
    remoteDataSource: ref.watch(locationRemoteDataSourceProvider),
  );
}

// --- Providers para los Casos de Uso ---
@riverpod
GetLocations getLocations(GetLocationsRef ref) {
  return GetLocations(ref.watch(locationRepositoryProvider));
}

@riverpod
AddLocation addLocation(AddLocationRef ref) {
  return AddLocation(ref.watch(locationRepositoryProvider));
}

@riverpod
UpdateLocation updateLocation(UpdateLocationRef ref) {
  return UpdateLocation(ref.watch(locationRepositoryProvider));
}

@riverpod
DeleteLocation deleteLocation(DeleteLocationRef ref) {
  return DeleteLocation(ref.watch(locationRepositoryProvider));
}

// --- Provider principal para el estado de la UI ---
@riverpod
Stream<List<Location>> locationsStream(LocationsStreamRef ref) {
  return ref.watch(getLocationsProvider).call();
}
