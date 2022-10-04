import 'package:flutter/material.dart';

class ThemeModel {
  static List<String>? typeImage({required List<String> types}) {
    final List<String> list = [];
    for (var type in types) {
      switch (type) {
        case 'Normal':
          {
            list.add('assets/types/normal.png');
            break;
          }
        case 'Fire':
          {
            list.add('assets/types/fire.png');
            break;
          }
        case 'Water':
          {
            list.add('assets/types/water.png');
            break;
          }
        case 'Grass':
          {
            list.add('assets/types/grass.png');
            break;
          }
        case 'Electric':
          {
            list.add('assets/types/electric.png');
            break;
          }
        case 'Ice':
          {
            list.add('assets/types/ice.png');
            break;
          }
        case 'Fighting':
          {
            list.add('assets/types/fighting.png');
            break;
          }
        case 'Poison':
          {
            list.add('assets/types/poison.png');
            break;
          }
        case 'Ground':
          {
            list.add('assets/types/ground.png');
            break;
          }
        case 'Flying':
          {
            list.add('assets/types/flying.png');
            break;
          }
        case 'Psychic':
          {
            list.add('assets/types/psychic.png');
            break;
          }
        case 'Bug':
          {
            list.add('assets/types/bug.png');
            break;
          }
        case 'Rock':
          {
            list.add('assets/types/rock.png');
            break;
          }
        case 'Ghost':
          {
            list.add('assets/types/ghost.png');
            break;
          }
        case 'Dark':
          {
            list.add('assets/types/dark.png');
            break;
          }
        case 'Dragon':
          {
            list.add('assets/types/dragon.png');
            break;
          }
        case 'Steel':
          {
            list.add('assets/types/steel.png');
            break;
          }
        case 'Fairy':
          {
            list.add('assets/types/fairy.png');
            break;
          }
        default:
          {
            list.add('assets/types/normal.png');
            break;
          }
      }
    }
    return list;
  }

   static List<Color> colorLightList({required List<String> types}) {
    final List<Color?> list = [];
    for (var type in types) {
      switch (type) {
        case 'Normal':
          {
            list.add(Colors.brown[400]);
            break;
          }

        case 'Fire':
          {
            list.add(Colors.red);
            break;
          }
        case 'Water':
          {
            list.add(Colors.blue);
            break;
          }
        case 'Grass':
          {
            list.add(Colors.green);
            break;
          }
        case 'Electric':
          {
            list.add(Colors.amber);
            break;
          }
        case 'Ice':
          {
            list.add(Colors.cyan[400]);
            break;
          }
        case 'Fighting':
          {
            list.add(Colors.orange);
            break;
          }

        case 'Poison':
          {
            list.add(Colors.purple);
            break;
          }

        case 'Ground':
          {
            list.add(Colors.orange[300]);
            break;
          }

        case 'Flying':
          {
            list.add(Colors.indigo[200]);
            break;
          }
        case 'Psychic':
          {
            list.add(Colors.pink);
            break;
          }

        case 'Bug':
          {
            list.add(Colors.lightGreen[500]);
            break;
          }

        case 'Rock':
          {
            list.add(Colors.grey);
            break;
          }

        case 'Ghost':
          {
            list.add(Colors.indigo[400]);
            break;
          }

        case 'Dark':
          {
            list.add(Colors.brown);
            break;
          }

        case 'Dragon':
          {
            list.add(Colors.indigo[800]);
            break;
          }
        case 'Steel':
          {
            list.add(Colors.blueGrey);
            break;
          }
        case 'Fairy':
          {
            list.add(Colors.pinkAccent[100]);
            break;
          }
        default:
          {
            list.add(Colors.grey);
            break;
          }
      }
    }
    return list.cast<Color>();
  }

    static List<Color> colorDark({required List<String> types}) {
    final List<Color?> list = [];
    for (var type in types) {
      switch (type) {
        case 'Normal':
          {
            list.add(Colors.brown[600]);
            break;
          }

        case 'Fire':
          {
            list.add(Colors.red[800]);
            break;
          }
        case 'Water':
          {
            list.add(Colors.blue[800]);
            break;
          }
        case 'Grass':
          {
            list.add(Colors.green[800]);
            break;
          }
        case 'Electric':
          {
            list.add(Colors.amber[800]);
            break;
          }
        case 'Ice':
          {
            list.add(Colors.cyan[800]);
            break;
          }
        case 'Fighting':
          {
            list.add(Colors.orange[800]);
            break;
          }

        case 'Poison':
          {
            list.add(Colors.purple[800]);
            break;
          }

        case 'Ground':
          {
            list.add(Colors.orange[500]);
            break;
          }

        case 'Flying':
          {
            list.add(Colors.indigo[900]);
            break;
          }
        case 'Psychic':
          {
            list.add(Colors.pink[800]);
            break;
          }

        case 'Bug':
          {
            list.add(Colors.lightGreen[900]);
            break;
          }

        case 'Rock':
          {
            list.add(Colors.grey[800]);
            break;
          }

        case 'Ghost':
          {
            list.add(Colors.indigo[900]);
            break;
          }

        case 'Dark':
          {
            list.add(Colors.brown[800]);
            break;
          }

        case 'Dragon':
          {
            list.add(Colors.indigo[900]);
            break;
          }
        case 'Steel':
          {
            list.add(Colors.blueGrey[800]);
            break;
          }
        case 'Fairy':
          {
            list.add(Colors.pinkAccent[800]);
            break;
          }
        default:
          {
            list.add(Colors.grey[800]);
            break;
          }
      }
    }
    return list.cast<Color>();
  }

    static Color? color({required String type}) {
    switch (type) {
      case 'Normal':
        return Colors.brown[400];
      case 'Fire':
        return Colors.red;
      case 'Water':
        return Colors.blue;
      case 'Grass':
        return Colors.green;
      case 'Electric':
        return Colors.amber;
      case 'Ice':
        return Colors.cyan[400];
      case 'Fighting':
        return Colors.orange;
      case 'Poison':
        return Colors.purple;
      case 'Ground':
        return Colors.orange[300];
      case 'Flying':
        return Colors.indigo[200];
      case 'Psychic':
        return Colors.pink;
      case 'Bug':
        return Colors.lightGreen[500];
      case 'Rock':
        return Colors.grey;
      case 'Ghost':
        return Colors.indigo[400];
      case 'Dark':
        return Colors.brown;
      case 'Dragon':
        return Colors.indigo[800];
      case 'Steel':
        return Colors.blueGrey;
      case 'Fairy':
        return Colors.pinkAccent[100];
      default:
        return Colors.grey;
    }
  }

  static List<Color> colorWeaknesses({ required List<String> weaknesses}) {
    final List<Color?> list = [];
    for (var colorWeaknesse in weaknesses) {
      switch (colorWeaknesse) {
        case 'Normal':
          {
            list.add(Colors.brown[400]);
            break;
          }

        case 'Fire':
          {
            list.add(Colors.red);
            break;
          }
        case 'Water':
          {
            list.add(Colors.blue);
            break;
          }
        case 'Grass':
          {
            list.add(Colors.green);
            break;
          }
        case 'Electric':
          {
            list.add(Colors.amber);
            break;
          }
        case 'Ice':
          {
            list.add(Colors.cyan[400]);
            break;
          }
        case 'Fighting':
          {
            list.add(Colors.orange);
            break;
          }

        case 'Poison':
          {
            list.add(Colors.purple);
            break;
          }

        case 'Ground':
          {
            list.add(Colors.orange[300]);
            break;
          }

        case 'Flying':
          {
            list.add(Colors.indigo[200]);
            break;
          }
        case 'Psychic':
          {
            list.add(Colors.pink);
            break;
          }

        case 'Bug':
          {
            list.add(Colors.lightGreen[500]);
            break;
          }

        case 'Rock':
          {
            list.add(Colors.grey);
            break;
          }

        case 'Ghost':
          {
            list.add(Colors.indigo[400]);
            break;
          }

        case 'Dark':
          {
            list.add(Colors.brown);
            break;
          }

        case 'Dragon':
          {
            list.add(Colors.indigo[800]);
            break;
          }
        case 'Steel':
          {
            list.add(Colors.blueGrey);
            break;
          }
        case 'Fairy':
          {
            list.add(Colors.pinkAccent[100]);
            break;
          }
        default:
          {
            list.add(Colors.grey);
            break;
          }
      }
    }
    return list.cast<Color>();
  }
}