import 'package:flutter/material.dart';
import 'package:navegacion_mercado/pantallas/detalle.dart';

class PantallaProductos extends StatelessWidget {
  const PantallaProductos({super.key});

  final List<Map<String, String>> productores = const [
    {
      'nombre': 'Finca La Esperanza',
      'vereda': 'Vereda Camilo C',
      'distancia': '3.2 km',
      'imagen': 'https://images.unsplash.com/photo-1500937386664-56d1dfef3854?w=150',
    },
    {
      'nombre': 'Huerta Doña Rosa',
      'vereda': 'Amagá',
      'distancia': '5.1 km',
      'imagen': 'https://images.unsplash.com/photo-1595974482597-4b8da8879bc5?w=150',
    },
    {
      'nombre': 'Finca El Manantial',
      'vereda': 'Rionegro',
      'distancia': '4.4 km',
      'imagen': 'https://images.unsplash.com/photo-1500382017468-9049fed747ef?w=150',
    },
    {
      'nombre': 'Granja Los Alpes',
      'vereda': 'Guarne',
      'distancia': '6.0 km',
      'imagen': 'https://images.unsplash.com/photo-1589923188900-85dae523342b?w=150',
    },
    {
      'nombre': 'Cultivos San Isidro',
      'vereda': 'El Retiro',
      'distancia': '2.8 km',
      'imagen': 'https://images.unsplash.com/photo-1523348837708-15d4a09cfac2?w=150',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mercado Campesino'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Productores cercanos',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: productores.length,
              itemBuilder: (context, index) {
                final productor = productores[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        productor['imagen']!,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Icon(Icons.store, color: Colors.white),
                        ),
                      ),
                    ),
                    title: Text(
                      productor['nombre']!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('${productor['vereda']!} • ${productor['distancia']!}'),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PantallaDetalle(
                            nombreProductor: productor['nombre']!,
                            vereda: productor['vereda']!,
                            imagenProductor: productor['imagen']!,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}