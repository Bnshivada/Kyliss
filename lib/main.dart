import 'package:flutter/material.dart';
import 'ui/screens/permission_screen.dart';
import 'ui/screens/home_screen.dart';

void main() {
  runApp(const KylissApp());
}

class KylissApp extends StatelessWidget {
  const KylissApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kyliss',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PermissionScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
