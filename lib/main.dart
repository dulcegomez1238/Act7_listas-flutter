import 'package:flutter/material.dart';

void main() => runApp(const AppFloreria());

class AppFloreria extends StatelessWidget {
  const AppFloreria({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Empleados(),
    );
  }
}

class Empleados extends StatelessWidget {
  const Empleados({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de datos para los empleados de la florería
    final List<Map<String, String>> empleados = [
      {'nombre': 'Magui', 'puesto': 'Dueña / Florista Principal', 'img': 'https://i.pravatar.cc/150?u=9'},
      {'nombre': 'Carlos', 'puesto': 'Especialista en Arreglos', 'img': 'https://i.pravatar.cc/150?u=12'},
      {'nombre': 'Sofía', 'puesto': 'Atención al Cliente', 'img': 'https://i.pravatar.cc/150?u=5'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Florería Magui',
          style: TextStyle(color: Colors.white), // Texto blanco como pediste
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 68, 138, 255), // Azul
        leading: const Icon(Icons.camera_alt, color: Colors.white),
        actions: const [
          Icon(Icons.favorite, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.edit, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      // Agregamos el cuerpo con la lista de tarjetas
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: empleados.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blue[100], // Fondo azul claro para la tarjeta
            margin: const EdgeInsets.only(bottom: 15),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(empleados[index]['img']!),
              ),
              title: Text(
                empleados[index]['nombre']!,
                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              subtitle: Text(empleados[index]['puesto']!),
              trailing: const Icon(
                Icons.favorite,
                color: Colors.purple, // Icono de like morado
              ),
            ),
          );
        },
      ),
    );
  }
}