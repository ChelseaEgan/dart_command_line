import 'dart:math';
import 'package:json_annotation/json_annotation.dart';
import './planet.dart';

part 'planetary_system.g.dart';

@JsonSerializable()
class PlanetarySystem {
  static const KEY_DESCRIPTION = 'description';
  static const KEY_NAME = 'name';
  static const KEY_PLANETS = 'planets';

  final Random _random = Random();
  final String name;
  final List<Planet> planets;
  Planet selectedPlanet;

  PlanetarySystem({this.name = 'Unnamed System', this.planets = const []});

  factory PlanetarySystem.fromJson(Map<String, dynamic> json) =>
      _$PlanetarySystemFromJson(json);

  Map<String, dynamic> toJson() => _$PlanetarySystemToJson(this);

  int get numPlanets => planets.length;

  set numPlanets(int numPlanets) => numPlanets = numPlanets;

  Planet getRandomPlanet() {
    if (!hasPlanets) return Planet.nullPlanet();
    return planets[_random.nextInt(numPlanets)];
  }

  dynamic getPlanetWithName(String planetName) {
    return planets.firstWhere(
        (planet) => planet.name.toLowerCase() == planetName.toLowerCase(),
        orElse: () => Planet.nullPlanet());
  }

  String get planetName => selectedPlanet.name;

  String get planetDescription => selectedPlanet.description;

  bool get hasPlanets => planets.isNotEmpty;
}
