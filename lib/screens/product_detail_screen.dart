import 'package:flutter/material.dart';
import '../models/product.dart';
import '../data/product_data.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart_outlined),
                onPressed: () async {
                  await Navigator.pushNamed(context, '/cart');
                  setState(() {}); // Sepetten dönünce sayıyı güncelle
                },
              ),
              if (ProductData.cartItems.isNotEmpty)
                Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                    ),
                    constraints: const BoxConstraints(minWidth: 16, minHeight: 16),
                    child: Text(
                      '${ProductData.cartItems.length}',
                      style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              product.imageUrl,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.indigo.shade50,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          product.category,
                          style: TextStyle(color: Colors.indigo.shade700, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 20),
                          const SizedBox(width: 4),
                          Text(
                            product.rating.toString(),
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    product.title,
                    style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${product.price.toStringAsFixed(0)} ₺',
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w900, color: Colors.indigo),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Ürün Açıklaması',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    product.description,
                    style: TextStyle(fontSize: 16, color: Colors.grey[600], height: 1.5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
        ),
        child: SafeArea(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                ProductData.cartItems.add(product);
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${product.title} sepete eklendi!'),
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.indigo,
                  action: SnackBarAction(
                    label: 'SEPETE GİT',
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, '/cart');
                    },
                  ),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            child: const Text('Sepete Ekle', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
