import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:pokedex_2022/core/utils/theme/theme_color.dart';

class NewLoadingWidget extends StatelessWidget {
  const NewLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.35),
      child: LoadingAnimationWidget.inkDrop(
        color: ThemeColor.primaryRed,
        size: size.height * 0.08,
      ),
    );
  }
}
