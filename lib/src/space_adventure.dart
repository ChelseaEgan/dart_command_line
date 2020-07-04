import 'dart:io';
import 'package:dart_space_adventure/dart_space_adventure.dart';

import 'planetary_system.dart';

class SpaceAdventure {
  final PlanetarySystem planetarySystem;

  SpaceAdventure({this.planetarySystem});

  void start() {
    printGreeting();
    printIntroduction(responseToPrompt('What is your name?'));
    if (planetarySystem.hasPlanets) {
      print('Let\'s go on an adventure!');
      travelLoop();
    } else {
      print('We don\'t have any planets to travel to. Sorry!');
    }
  }

  void printGreeting() {
    print('Welcome to the ${planetarySystem.name}!\n'
        'There are ${planetarySystem.numPlanets} planets to explore.');
  }

  void printIntroduction(String name) {
    print(
        'Nice to meet you, $name. My name is Eliza, I\'m an old friend of Alexa.');
  }

  void travelLoop() {
    while (true) {
      travel(promptForYesOrNo(
          'Shall I randomly choose a planet for you to visit? (Y or N)'));
      if (!promptForYesOrNo('Would you like to go somewhere else? (Y or N')) {
        print('Thanks for flying with us!\n'
            'Goodbye!');
        return;
      }
    }
  }

  void travel(bool isRandomDestination) {
    Planet planet = isRandomDestination
        ? planetarySystem.getRandomPlanet()
        : planetarySystem.getPlanetWithName(
            responseToPrompt('Name the planet you would like to visit.'));
    travelTo(planet);
  }

  void travelTo(Planet planet) {
    if (planet.isNullPlanet) {
      print('You must be thinking of another planetary system...');
    } else {
      print('Traveling to ${planet.name}...\n'
          'Arrived at ${planet.name}. ${planet.description}');
    }
  }

  String responseToPrompt(String prompt) {
    print(prompt);
    return stdin.readLineSync();
  }

  bool promptForYesOrNo(String prompt) {
    String answer;
    while (answer != 'Y' && answer != 'N') {
      answer = responseToPrompt(prompt).toUpperCase();
      if (answer == 'Y') {
        return true;
      } else if (answer == 'N') {
        return false;
      } else {
        print('Sorry, I didn\'t get that.');
      }
    }
    return false;
  }
}
