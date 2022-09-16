import 'package:equatable/equatable.dart';

abstract class PokedexEvent extends Equatable {
  const PokedexEvent();

  @override
  List<Object> get props => [];
}

class LoadingPokedexEvent extends PokedexEvent {
  const LoadingPokedexEvent();
}
