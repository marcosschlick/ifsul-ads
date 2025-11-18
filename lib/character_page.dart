import 'package:consumir_api/api_service.dart';
import 'package:consumir_api/character.dart';
import 'package:consumir_api/character_card.dart';
import 'package:flutter/material.dart';

class CharacterPage extends StatefulWidget {
  const CharacterPage({super.key});

  @override
  State<CharacterPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {
  List<Character> characters = [];
  ApiService apiService = ApiService();

  _loadData() async {
    List<Character> temp = await apiService.getAll();
    setState(() {
      characters = temp;
    });
  }

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Characters List'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width > 600 ? 10 : 2,
        ),
        itemCount: characters.length,
        itemBuilder: (ctx, index) {
          return CharacterCard(character: characters[index]);
        },
      ),
    );
  }
}
