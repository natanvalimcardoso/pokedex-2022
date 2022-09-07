import 'package:cuida_pet/app/modules/core/auth/auth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

//* Aqui vai ficar os imports das binds que serão usadas no modulo
class CoreModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AuthStore(), export: true) // Injetamos no Appmodule o AuthStore
  ];
}
