// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:hive_flutter/adapters.dart';
import 'package:place_picker_google/place_picker_google.dart';

part 'current_location_entity.g.dart';

@HiveType(typeId: 30)
class CurrentLocationEntity {
  @HiveField(0)
  final double latitude;
  @HiveField(1)
  final double longitude;
  @HiveField(2)
  final String locationName;
  CurrentLocationEntity({
    required this.latitude,
    required this.longitude,
    required this.locationName,
  });

  factory CurrentLocationEntity.fromLocationResult(LocationResult result) {
    return CurrentLocationEntity(
      latitude: result.latLng!.latitude,
      longitude: result.latLng!.longitude,
      locationName: result.formattedAddress!,
    );
  }
}
