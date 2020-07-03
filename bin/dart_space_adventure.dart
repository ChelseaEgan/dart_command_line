import 'package:dart_space_adventure/dart_space_adventure.dart';

void main(List<String> arguments) {
  final planetarySystemData =
      FileProcessing(filePath: arguments[0]).getFileAsJSON();
  SpaceAdventure(planetarySystem: PlanetarySystem(planetarySystemData)).start();
}
