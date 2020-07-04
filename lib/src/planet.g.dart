// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Planet _$PlanetFromJson(Map<String, dynamic> json) {
  return Planet(
    name: json['name'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$PlanetToJson(Planet instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
    };
