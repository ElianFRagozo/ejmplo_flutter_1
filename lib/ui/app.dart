import 'package:ejmplo_flutter_1/pages/Profesores/lista.dart';
import 'package:flutter/material.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gestion de Profesores',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey),
        home: const ListaProfes(),
    );
  }
}