import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Devil May Cry 5'),
        ),
        body: const ProductDetails(),
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/dmc5.jpg",
            width: 400,
            height: 300,
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Ceci est une description détaillée du produit. "
              "Elle peut contenir des informations importantes sur le produit.",
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            " 200 TND",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            label: const Text("Acheter"),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
