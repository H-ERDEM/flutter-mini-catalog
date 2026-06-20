import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../models/product.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  final VoidCallback onAddToCart;

  const DetailScreen({
    Key? key,
    required this.product,
    required this.onAddToCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: product.image,
              width: double.infinity,
              height: 350,
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(
                height: 350,
                color: Colors.grey[200],
                child: const Center(child: CircularProgressIndicator()),
              ),
              errorWidget: (context, url, error) => const SizedBox(
                height: 350,
                child: Center(child: Icon(Icons.broken_image, size: 100, color: Colors.grey)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          product.title,
                          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        '${product.price.toStringAsFixed(2)} ₺',
                        style: TextStyle(
                          fontSize: 22,
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Ürün Açıklaması',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    product.description,
                    style: TextStyle(fontSize: 16, color: Colors.grey[700], height: 1.5),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        onAddToCart();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('${product.title} sepete eklendi!'),
                            behavior: SnackBarBehavior.floating,
                            duration: const Duration(seconds: 2),
                          ),
                        );
                      },
                      icon: const Icon(Icons.shopping_cart_checkout),
                      label: const Text('Sepete Ekle', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
