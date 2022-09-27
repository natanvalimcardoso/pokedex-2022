import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class NewErrorWidgetDart extends StatefulWidget {
  final String message;
  const NewErrorWidgetDart({Key? key, required this.message}) : super(key: key);

  @override
  State<NewErrorWidgetDart> createState() => _NewErrorWidgetDartState();
}

class _NewErrorWidgetDartState extends State<NewErrorWidgetDart> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: contentBox(context, widget.message),
    );
  }
}
//Todo: tentando implementar o package com dialog
contentBox(context, String message) {
  AwesomeDialog(
    context: context,
    dialogType: DialogType.error,
    animType: AnimType.rightSlide,
    headerAnimationLoop: false,
    title: 'Erro na Pokedex',
    desc: message,
    btnOkOnPress: () {},
    btnOkIcon: Icons.cancel,
    btnOkColor: Colors.red,
  ).show();
}
