import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_2022/app/modules/core/core_module.dart';
import 'package:pokedex_2022/app/modules/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  //* (CoreModule) Aqui vai ficar os imports das binds que serão usadas no modulo
  //* Todos binds que nos setarmos dentro dele serão importados para nossa aplicação como um todo.
  //* Sem eu ter a necessidade de sujar todo o meu appModule com bando de classes que fica jogado no meio do código
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  List<ModularRoute> get routes => [
        // ModuleRoute('/auth', module: AuthModule()),
        ModuleRoute('/home', module: HomeModule()),
      ];
}
