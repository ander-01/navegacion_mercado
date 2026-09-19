import 'package:flutter/material.dart';

class PantallaDetalle extends StatelessWidget {
  final String nombreProductor;
  final String vereda;
  final String imagenProductor;

  const PantallaDetalle({
    super.key,
    required this.nombreProductor,
    required this.vereda,
    required this.imagenProductor,
  });

  final List<Map<String, String>> productos = const [
    {
      'nombre': 'Manzana roja',
      'precio': '\$2.500 / libra',
      'imagen': 'https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6?w=200',
    },
    {
      'nombre': 'Lechuga crespa',
      'precio': '\$1.800 / unidad',
      'imagen': 'https://images.unsplash.com/photo-1622206151226-18ca2c9ab4a1?w=200',
    },
    {
      'nombre': 'Uvas frescas',
      'precio': '\$4.500 / libra',
      'imagen': 'https://images.unsplash.com/photo-1537640538966-79f369143f8f?w=200',
    },
    {
      'nombre': 'Brocolis frescos',
      'precio': '\$3.000 / libra',
      'imagen': 'https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=200',
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Reemplaza el parámetro de resolución para cargar la portada nítida
    final String imagenAltaCalidad = imagenProductor.replaceAll('w=150', 'w=800');

    return Scaffold(
      appBar: AppBar(
        title: Text(nombreProductor),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          // Banner de portada del productor
          SizedBox(
            height: 160,
            width: double.infinity,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  imagenAltaCalidad,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      Container(color: Colors.green.shade100),
                ),
                Container(
                  color: Colors.black.withOpacity(0.4),
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nombreProductor,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        vereda,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Disponible esta semana (4 productos)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: productos.length,
              itemBuilder: (context, index) {
                final prod = productos[index];
                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      prod['imagen']!,
                      width: 45,
                      height: 45,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.eco, color: Colors.green),
                    ),
                  ),
                  title: Text(prod['nombre']!),
                  subtitle: Text(prod['precio']!),
                  trailing: IconButton(
                    icon: const Icon(Icons.add_circle, color: Colors.green),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('${prod['nombre']} agregado al carrito'),
                          duration: const Duration(seconds: 1),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text('Volver a Productores'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}