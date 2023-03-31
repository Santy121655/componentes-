import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => _ShowAlert(context),
            child: const Text('Toca para mostrar la alerta ')),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.keyboard_return),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }

  void _ShowAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            title: Text('Titulo'),
            content: Column(
              children: [
                Text('Este es el contenide de la alerta '),
                FlutterLogo(
                  size: 50.0,
                ),
              ],
            ),
          );
        });
  }
}
