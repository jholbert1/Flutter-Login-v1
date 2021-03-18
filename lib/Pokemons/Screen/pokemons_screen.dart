import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loginsignup2/Pokemons/State/state_pokemon_manage.dart';
import 'package:loginsignup2/Pokemons/models/pokemon_model.dart';

class PokemonScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    AsyncValue<Pokemon> pokemons = watch(pokemonStateFuture);
    
    return pokemons.when(
      loading: () => Center(child: const CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('${error.toString()}')),
      data: (data) {
        return GridView.builder(
          itemCount: data.results.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.90
          ),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20),
              child: PokeCard( name: data.results[index].name, index: index + 1 ),
            );
          },
        );
      },
    );
  }
}

class PokeCard extends StatelessWidget {
  final String name;
  final int index;

  const PokeCard({Key key, this.name, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16),
          ),
          child: FadeInImage(
            placeholder: AssetImage('assets/images/no-image.jpg'),
            image: NetworkImage(
              'https://pokeres.bastionbot.org/images/pokemon/$index.png'
            ),
            fit: BoxFit.cover,
            height: 150,
            width: 200,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text('$name', style: TextStyle(color: Colors.black87),),
        )
      ],
    );
  }
}