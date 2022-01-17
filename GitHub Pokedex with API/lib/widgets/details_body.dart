import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/constants/constans.dart';
import 'package:pokedex/model/pokemon_model.dart';

class DetailsBody extends StatelessWidget {
  final PokemonModel pokemon;
  const DetailsBody({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Name",
                    style: Constants.nameStyle(),
                  ),
                  Text(
                    "Height",
                    style: Constants.nameStyle(),
                  ),
                  Text(
                    "Weight",
                    style: Constants.nameStyle(),
                  ),
                  Text(
                    "Spawn Time",
                    style: Constants.nameStyle(),
                  ),
                  Text(
                    "Weakness",
                    style: Constants.nameStyle(),
                  ),
                  Text(
                    "Pre Evolution",
                    style: Constants.nameStyle(),
                  ),
                  Text(
                    "Next Evolution",
                    style: Constants.nameStyle(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(pokemon.name.toString()),
                  Text(pokemon.height.toString()),
                  Text(pokemon.weight.toString()),
                  Text(pokemon.spawnTime.toString()),
                  Text(pokemon.weaknesses.toString()),
                  Text(pokemon.prevEvolution.toString()),
                  Text(pokemon.nextEvolution.toString()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
