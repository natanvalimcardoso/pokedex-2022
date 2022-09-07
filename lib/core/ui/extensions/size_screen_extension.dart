
import 'package:flutter_screenutil/flutter_screenutil.dart';

//* Fiz isso para encapsular o ScreenUtil e não precisar ficar chamando ele toda hora, pois caso eu mude de lib, não preciso alterar em todos os lugares somente no arquivo de extensão

extension SizeScreenExtension on num{

 double get w => ScreenUtil().setWidth(this); //  =  __ Largura
 double get h => ScreenUtil().setHeight(this); // =  | Altura
 double get r => ScreenUtil().radius(this); //    =  O Radius
 double get sp => ScreenUtil().setSp(this); //    =  F Fonte

 double get sw => ScreenUtil().screenWidth * this; // = Largura da Tela - 0.5 = 50% da tela
 double get sh => ScreenUtil().screenHeight * this; // = Altura da Tela - 0.5 = 50% da tela

 double get statusBar => ScreenUtil().statusBarHeight; // = Altura da Barra de Status
}