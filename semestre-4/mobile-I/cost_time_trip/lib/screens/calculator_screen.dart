import 'package:cost_time_trip/widgets/answer_card.dart';
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

  String _costResult = '0.00';
  String _timeResult = '0.00';
  bool _showResults = false;

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

    final distance = double.tryParse(_distanceController.text) ?? 0;
    final price = double.tryParse(_priceController.text) ?? 0;
    final consumption =
        double.tryParse(_vehicleConsumptionController.text) ?? 0;
    final speed = double.tryParse(_averageSpeedController.text) ?? 0;

    if (distance <= 0 || price <= 0 || consumption <= 0 || speed <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Todos os valores devem ser positivos'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    final cost = (distance / consumption) * price;
    final time = distance / speed;

    setState(() {
      _costResult = cost.toStringAsFixed(2);
      _timeResult = time.toStringAsFixed(2);
      _showResults = true;
    });
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
              label: 'Distância (km)',
              controller: _distanceController,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              label: 'Preço do combustível (R\$/L)',
              controller: _priceController,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              label: 'Consumo do veículo (km/L)',
              controller: _vehicleConsumptionController,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              label: 'Velocidade média (km/h)',
              controller: _averageSpeedController,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 50),
            PrimaryButton(text: 'Calcular', onPressed: _submitForm),
            const SizedBox(height: 30),
            if (_showResults) AnswerCard(cost: _costResult, time: _timeResult),
          ],
        ),
      ),
    );
  }
}
