import 'package:cuida_pet/app/models/user_model.dart';
import 'package:mobx/mobx.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store{

  @readonly
  UserModel? userLogged; //_
}
  
// o Comando builder runner é: flutter pub run build_runner watch --delete-conflicting-outputs