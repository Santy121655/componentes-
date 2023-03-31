import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const HomeScreen(),
        'alert': (BuildContext context) => const AlertsScreen(),
        'entradas': (BuildContext context) => const InputsScreen(),
        'camera': (BuildContext context) => const CameraScreen(),
        'firebase': (BuildContext context) => const FirebaseScreen(),
      },

      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamada : ${settings.name}');
        return MaterialPageRoute(
            builder: (BuildContext context) => const AlertsScreen());
      },
    );
  }
}
