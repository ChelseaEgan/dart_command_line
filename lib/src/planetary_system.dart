import 'dart:math';
import 'package:json_annotation/json_annotation.dart';

part 'planetary_system.g.dart';

@JsonSerializable()
class PlanetarySystem {
  static const KEY_DESCRIPTION = 'description';
  static const KEY_NAME = 'name';
  static const KEY_PLANETS = 'planets';

  final String name;
  final List<dynamic> planets;
  int numPlanets;
  Map selectedPlanet;

  PlanetarySystem({this.name, this.planets});

  factory PlanetarySystem.fromJson(Map<String, dynamic> json) =>
      _$PlanetarySystemFromJson(json);

  Map<String, dynamic> toJson() => _$PlanetarySystemToJson(this);

  int getNumPlanets() {
    numPlanets ??= planets.length;
    return numPlanets;
  }

  bool setPlanet([String planetName]) {
    selectedPlanet = planetName == null
        ? planets[Random().nextInt(getNumPlanets())]
        : planets.firstWhere(
            (planet) =>
                planet[KEY_NAME].toLowerCase() == planetName.toLowerCase(),
            orElse: () => {});
    return selectedPlanet.isNotEmpty;
  }

  String getPlanetName() {
    return selectedPlanet[KEY_NAME];
  }

  String getPlanetDescription() {
    return selectedPlanet[KEY_DESCRIPTION];
  }
}
