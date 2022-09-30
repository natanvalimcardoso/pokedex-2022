// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextfieldPokemonWidgte extends StatelessWidget {
  final TextEditingController controllerTextField;
  Function(String) onChanged;

   TextfieldPokemonWidgte({
    Key? key,
    required this.controllerTextField,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        top: size.height * 0.02,
        left: size.width * 0.04,
        right: size.width * 0.04,
      ),
      child: TextField(
        onChanged: onChanged,
        controller: controllerTextField,
        decoration: InputDecoration(
          hintText: 'Pesquise o pokemon',
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
