import 'package:pokedex/model/pokemon.dart';

List<Pokemon> getPokemonList(Map<String, dynamic> json) {
  List<dynamic> results = json['results'];
  List<Pokemon> pokemons = [];
  for (var element in results) {
    pokemons.add(Pokemon.fromJson(element));
  }
  return pokemons;
}
