import 'package:ejmplo_flutter_1/domain/models/profesores.dart';
import 'package:ejmplo_flutter_1/pages/Profesores/add.dart';
import 'package:flutter/material.dart';

class ListaProfes extends StatefulWidget {
  const ListaProfes({Key? key}) : super(key: key);

  @override
  State<ListaProfes> createState() => _ListaProfesState();
}

class _ListaProfesState extends State<ListaProfes> {
  final List<Profesor> _profes = listaProfes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado de Profes'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const CrearProfes())
              ).then((respuesta) {
                _profes.add(respuesta);
                setState(() {});
              });
            },
            icon: const Icon(Icons.add_circle),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _profes.length,
        itemBuilder: (context, index) {
          final profesor = _profes[index];
          return Dismissible(
            key: Key(profesor.nombre),
            direction: DismissDirection.startToEnd,
            onDismissed: (direction) {
              setState(() {
                _profes.removeAt(index);
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${profesor.nombre} eliminado')),
              );
            },
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Icon(Icons.delete, color: Colors.white),
              ),
            ),
            child: ListTile(
              title: Text(profesor.nombre),
              subtitle: Text(profesor.programa),
              leading: CircleAvatar(backgroundImage: NetworkImage(profesor.foto)),
              trailing: CircleAvatar(
                backgroundColor: (profesor.estado) ? Colors.green : Colors.grey,
                radius: 12.0,
                child: (profesor.estado) ? Text("${profesor.horas}") : const Text("0"),
              ),
            ),
          );
        },
      ),
    );
  }
}
