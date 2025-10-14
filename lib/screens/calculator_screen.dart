import 'package:cost_time_trip/widgets/custom_text_field.dart';
import 'package:cost_time_trip/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final _distanceController = TextEditingController();
  final _priceController = TextEditingController();
  final _vehicleConsumptionController = TextEditingController();
  final _averageSpeedController = TextEditingController();

  void _submitForm() {
    if (_distanceController.text.isEmpty ||
        _priceController.text.isEmpty ||
        _vehicleConsumptionController.text.isEmpty ||
        _averageSpeedController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Por favor, preencha todos os campos'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calcular Custo e Tempo"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 14, 0, 139),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            CustomTextField(
              label: 'Distância(km)',
              controller: _distanceController,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              label: 'Preço do combustível(RS/L)',
              controller: _priceController,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              label: 'Consumo do veículo(km/L)',
              controller: _vehicleConsumptionController,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              label: 'Velocidade média(km/h)',
              controller: _averageSpeedController,
            ),
            const SizedBox(height: 50),
            PrimaryButton(text: 'Calcular', onPressed: _submitForm),
          ],
        ),
      ),
    );
  }
}
