// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planetary_system.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanetarySystem _$PlanetarySystemFromJson(Map<String, dynamic> json) {
  return PlanetarySystem(
    name: json['name'] as String,
    planets: (json['planets'] as List)
        ?.map((e) => e == null
            ? null
            : Planet.fromJson((e as Map<String, dynamic>)?.map(
                (k, e) => MapEntry(k, e as String),
              )))
        ?.toList(),
  )
    ..selectedPlanet = json['selectedPlanet'] == null
        ? null
        : Planet.fromJson((json['selectedPlanet'] as Map<String, dynamic>)?.map(
            (k, e) => MapEntry(k, e as String),
          ))
    ..numPlanets = json['numPlanets'] as int;
}

Map<String, dynamic> _$PlanetarySystemToJson(PlanetarySystem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'planets': instance.planets,
      'selectedPlanet': instance.selectedPlanet,
      'numPlanets': instance.numPlanets,
    };
