import 'package:flutter/material.dart';
import 'pantallas/productos.dart';

void main() => runApp(const MercadoApp());

class MercadoApp extends StatelessWidget {
  const MercadoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mercado Campesino',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const PantallaProductos(),
    );
  }
}