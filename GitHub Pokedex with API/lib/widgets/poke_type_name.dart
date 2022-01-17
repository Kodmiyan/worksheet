import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/constants/constans.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/widgets/details_body.dart';

class PokeNameType extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeNameType({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                pokemon.name.toString(),
                style: Constants.style(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                '#' + pokemon.id.toString(),
                style: Constants.style(),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Chip(label: Text(pokemon.type![0])),
          ),
        ),
        Stack(
          children: [
            Hero(
              tag: pokemon.id!,
              child: Align(
                alignment: Alignment.center,
                child: CachedNetworkImage(
                  imageUrl: pokemon.img.toString(),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: 120,
                width: 120,
                child: Image.asset('images/pokeball.png'),
              ),
            )
          ],
        )
      ],
    );
  }
}
