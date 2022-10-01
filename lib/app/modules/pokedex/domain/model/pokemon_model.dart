// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class PokemonModel {
  final String name;
  final String img;
  final String num;
  final List<String> type;

  PokemonModel({
    required this.name,
    required this.img,
    required this.num,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'img': img,
      'num': num,
      'type': type,
    };
  }

  factory PokemonModel.fromMap(Map<String, dynamic> map) {
    return PokemonModel(
      type: List<String>.from(map['type'] ?? []),
      name: map['name'] ?? '',
      img: map['img'] ?? '',
      num: map['num'] ?? '',
    );
  }

  String get image =>
      'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/$num.png';

  Color? get baseColor => _color(type: type[0]);


  String toJson() => jsonEncode(toMap());

  factory PokemonModel.fromJson(String json) => PokemonModel.fromMap(jsonDecode(json));

  @override
  String toString() {
    return 'PokemonModel(name: $name, img: $img, num: $num)';
  }

  static Color? _color({required String type}) {
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
        return Colors.cyanAccent[400];
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
  Color? get baseColorDark => _colorDark(type: type[0]);

  static Color? _colorDark({required String type}) {
    switch (type) {
      case 'Normal':
        return Colors.brown[800];
      case 'Fire':
        return Colors.red[800];
      case 'Water':
        return Colors.blue[800];
      case 'Grass':
        return Colors.green[800];
      case 'Electric':
        return Colors.amber[800];
      case 'Ice':
        return Colors.cyanAccent[900];
      case 'Fighting':
        return Colors.orange[800];
      case 'Poison':
        return Colors.purple[800];
      case 'Ground':
        return Colors.orange[500];
      case 'Flying':
        return Colors.indigo[900];
      case 'Psychic':
        return Colors.pink[800];
      case 'Bug':
        return Colors.lightGreen[900];
      case 'Rock':
        return Colors.grey[800];
      case 'Ghost':
        return Colors.indigo[900];
      case 'Dark':
        return Colors.brown[800];
      case 'Dragon':
        return Colors.indigo[900];
      case 'Steel':
        return Colors.blueGrey[800];
      case 'Fairy':
        return Colors.pinkAccent[800];
      default:
        return Colors.grey[800];
    }
  }

  List<String>? get imageType => _typeImage(types: type);

  static List<String>? _typeImage({required List<String?> types}) {
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
}
