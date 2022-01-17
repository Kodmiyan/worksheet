import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokemonImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokemonImageAndBall({Key? key, required this.pokemon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
                height: 120,
                width: 120,
                child: Image.asset('images/pokeball.png'))),
        Align(
            alignment: Alignment.bottomRight,
            child: Hero(
              tag: pokemon.id!,
              child: CachedNetworkImage(
                errorWidget: (context, url, error) => const Icon(Icons.cancel),
                imageUrl: pokemon.img!,
                placeholder: (context, url) => const CircularProgressIndicator(
                  color: Colors.red,
                ),
              ),
            ))
      ],
    );
  }
}
