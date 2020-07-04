import 'package:json_annotation/json_annotation.dart';

part 'planet.g.dart';

@JsonSerializable()
class Planet {
  final String name;
  final String description;

  Planet({this.name, this.description});

  Planet.nullPlanet()
      : name = 'Null',
        description = 'Null';

  factory Planet.fromJson(Map<String, String> json) => _$PlanetFromJson(json);

  Map<String, String> toJson() => _$PlanetToJson(this);

  bool get isNullPlanet => name == 'Null' && description == 'Null';
}
