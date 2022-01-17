import 'package:flutter/material.dart';
import 'package:pokedex/constants/ui_helper.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/widgets/details_body.dart';
import 'package:pokedex/widgets/poke_type_name.dart';

class DetailsPage extends StatelessWidget {
  final PokemonModel pokemonDetail;
  const DetailsPage({Key? key, required this.pokemonDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          UIHelper.getColorFromType(pokemonDetail.type![0].toString()),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new)),
              ),
            ),
            PokeNameType(
              pokemon: pokemonDetail,
            ),
            DetailsBody(pokemon: pokemonDetail)
          ],
        ),
      ),
    );
  }
}
