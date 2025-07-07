// lib/features/locations/data/datasources/location_remote_datasource.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:minecraft_coordinates/data/models/location_model.dart';

abstract class LocationRemoteDataSource {
  Stream<List<LocationModel>> getLocations();
  Future<void> addLocation(LocationModel location);
  Future<void> updateLocation(LocationModel location);
  Future<void> deleteLocation(String id);
}

class LocationRemoteDataSourceImpl implements LocationRemoteDataSource {
  final FirebaseFirestore firestore;
  LocationRemoteDataSourceImpl(this.firestore);

  // 'locations' es el nombre de nuestra colección en Firestore
  CollectionReference get _locationsCollection =>
      firestore.collection('locations');

  @override
  Stream<List<LocationModel>> getLocations() {
    return _locationsCollection.snapshots().map((snapshot) {
      return snapshot.docs
          .map((doc) => LocationModel.fromFirestore(doc))
          .toList();
    });
  }

  @override
  Future<void> addLocation(LocationModel location) {
    return _locationsCollection.add(location.toFirestore());
  }

  @override
  Future<void> updateLocation(LocationModel location) {
    return _locationsCollection.doc(location.id).update(location.toFirestore());
  }

  @override
  Future<void> deleteLocation(String id) {
    return _locationsCollection.doc(id).delete();
  }
}
