import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Inputs'),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.keyboard_return),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
