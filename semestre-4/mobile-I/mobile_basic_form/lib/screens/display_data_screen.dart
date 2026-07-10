import 'package:flutter/material.dart';
import 'package:mobile_basic_form/models/user.dart';
import 'package:mobile_basic_form/widgets/user_card.dart';
import 'package:mobile_basic_form/widgets/primary_button.dart';

class DisplayDataScreen extends StatelessWidget {
  final User user;

  const DisplayDataScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dados Cadastrados'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 62, 12, 128),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            UserCard(user: user),
            const SizedBox(height: 30),
            PrimaryButton(
              text: 'Voltar',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
