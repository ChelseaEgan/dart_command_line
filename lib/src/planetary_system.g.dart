// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planetary_system.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanetarySystem _$PlanetarySystemFromJson(Map<String, dynamic> json) {
  return PlanetarySystem(
    name: json['name'] as String,
    planets: json['planets'] as List,
  )
    ..numPlanets = json['numPlanets'] as int
    ..selectedPlanet = json['selectedPlanet'] as Map<String, dynamic>;
}

Map<String, dynamic> _$PlanetarySystemToJson(PlanetarySystem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'planets': instance.planets,
      'numPlanets': instance.numPlanets,
      'selectedPlanet': instance.selectedPlanet,
    };
