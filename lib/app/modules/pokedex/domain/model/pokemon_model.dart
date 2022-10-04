// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pokedex_2022/app/modules/pokedex/domain/model/theme_model.dart';

class PokemonModel {
  final String name;
  final String img;
  final String num;
  final List<String> type;
  final String height;
  final String weight;
  final List<String> weaknesses;

  PokemonModel({
    required this.height,
    required this.weight,
    required this.name,
    required this.img,
    required this.num,
    required this.type,
    required this.weaknesses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'img': img,
      'num': num,
      'type': type,
      'height': height,
      'weight': weight,
      'weaknesses': weaknesses,
    };
  }

  factory PokemonModel.fromMap(Map<String, dynamic> map) {
    return PokemonModel(
      type: List<String>.from(map['type'] ?? []),
      weaknesses: List<String>.from(map['weaknesses'] ?? []),
      name: map['name'] ?? '',
      img: map['img'] ?? '',
      num: map['num'] ?? '',
      height: map['height'] ?? '',
      weight: map['weight'] ?? '',
    );
  }

  String get image =>
      'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/$num.png';

  String toJson() => jsonEncode(toMap());

  factory PokemonModel.fromJson(String json) => PokemonModel.fromMap(jsonDecode(json));

  Color? get baseColor => ThemeModel.color(type: type[0]);

  List<Color> get baseColorDark => ThemeModel.colorDark(types: type);

  List<Color> get baseColorLightList => ThemeModel.colorLightList(types: type);

  List<String>? get imageType => ThemeModel.typeImage(types: type);

  List<Color> get baseColorWeaknesses => ThemeModel.colorWeaknesses(
        weaknesses: weaknesses,
      );

  @override
  String toString() {
    return 'PokemonModel(name: $name, img: $img, num: $num, type: $type, height: $height, weight: $weight)';
  }
}
