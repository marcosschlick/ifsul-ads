import 'package:flutter/material.dart';
import 'package:mobile_basic_form/models/user.dart';
import 'package:mobile_basic_form/screens/display_data_screen.dart';
import 'package:mobile_basic_form/widgets/custom_text_field.dart';
import 'package:mobile_basic_form/widgets/primary_button.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  void _submitForm() {
    if (_nameController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _phoneController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Por favor, preencha todos os campos'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    User newUser = User(
      name: _nameController.text,
      email: _emailController.text,
      phone: _phoneController.text,
    );

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DisplayDataScreen(user: newUser)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulário de Registro"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 62, 12, 128),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(label: 'Nome', controller: _nameController),
            const SizedBox(height: 20),
            CustomTextField(
              label: 'E-mail',
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              label: 'Telefone',
              controller: _phoneController,
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 30),
            PrimaryButton(text: 'Cadastrar', onPressed: _submitForm),
          ],
        ),
      ),
    );
  }
}
