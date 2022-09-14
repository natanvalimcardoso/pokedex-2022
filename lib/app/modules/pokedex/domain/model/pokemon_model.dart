// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PokemonModel {
  final int id;
  final String number;
  final String img;
  final String num;

  PokemonModel({
    required this.id,
    required this.number,
    required this.img,
    required this.num,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'number': number,
      'img': img,
      'num': num,
    };
  }

  factory PokemonModel.fromMap(Map<String, dynamic> map) {
    return PokemonModel(
      id: map['id'] ?? 0,
      number: map['number'] ?? '',
      img: map['img'] ?? '',
      num: map['num'] ?? '',
    );
  }

  String toJson() => jsonEncode(toMap());

  factory PokemonModel.fromJson(String json) => PokemonModel.fromMap(jsonDecode(json));

  @override
  String toString() {
    return 'PokemonModel(id: $id, number: $number, img: $img, num: $num)';
  }
}
