import 'dart:math';

class PlanetarySystem {
  static const KEY_DESCRIPTION = 'description';
  static const KEY_NAME = 'name';
  static const KEY_PLANETS = 'planets';

  String systemName;
  List<dynamic> planets;
  int numPlanets;
  Map selectedPlanet;

  PlanetarySystem(Map<String, dynamic> systemData) {
    systemName = systemData[KEY_NAME] ?? 'Unnamed System';
    planets = systemData[KEY_PLANETS] ?? [];
  }

  int getNumPlanets() {
    numPlanets ??= planets.length;
    return numPlanets;
  }

  bool setPlanet([String planetName]) {
    selectedPlanet = planetName == null
        ? planets[Random().nextInt(getNumPlanets() + 1)]
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
