import 'package:flutter/material.dart';
import 'package:consumir_api/character.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  const CharacterCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          character.photoUrl,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        Text(character.name),
      ],
    );
  }
}
