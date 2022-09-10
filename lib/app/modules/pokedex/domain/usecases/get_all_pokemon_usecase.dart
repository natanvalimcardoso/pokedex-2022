// As usecases são responsáveis por fazer a ponte entre a camada de domínio e a camada de infraestrutura (data)
// Ela é a implementação da regra de negócio

abstract class IGetAllPokemonUsecase {
  // Future<List<FailurePokedex, List<Pokemon>>> call(); EXEMPLO, COLCOAR either(dartz)
  teste(){

  }
}

class GetAllPokemonUsecase implements IGetAllPokemonUsecase {
  @override
  teste() {
    // TODO: implement teste
    throw UnimplementedError();
  }
  //@OVERRIDE
  // Future<List<FailurePokedex, List<Pokemon>>> call(); EXEMPLO, COLCOAR either(dartz)
}
