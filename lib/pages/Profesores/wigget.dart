import 'package:flutter/material.dart';

class Textos extends StatelessWidget {
  const Textos({super.key, required this.controlnombre, required this.titulo});

  final TextEditingController controlnombre;
  final String titulo;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controlnombre,
      decoration: InputDecoration(filled: true, labelText: titulo),
    );
  }
}