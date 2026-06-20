import 'package:flutter/material.dart';
import '../data/product_data.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    double total = ProductData.cartItems.fold(0, (sum, item) => sum + item.price);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sepetim'),
        actions: [
          if (ProductData.cartItems.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.delete_sweep),
              onPressed: () {
                setState(() {
                  ProductData.cartItems.clear();
                });
              },
            )
        ],
      ),
      body: ProductData.cartItems.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart_outlined, size: 80, color: Colors.grey[400]),
                  const SizedBox(height: 16),
                  const Text(
                    'Sepetiniz boş',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: ProductData.cartItems.length,
              itemBuilder: (context, index) {
                final product = ProductData.cartItems[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(product.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
                    ),
                    title: Text(product.title),
                    subtitle: Text('${product.price.toStringAsFixed(0)} ₺'),
                    trailing: IconButton(
                      icon: const Icon(Icons.remove_circle_outline, color: Colors.red),
                      onPressed: () {
                        setState(() {
                          ProductData.cartItems.removeAt(index);
                        });
                      },
                    ),
                  ),
                );
              },
            ),
      bottomNavigationBar: ProductData.cartItems.isEmpty
          ? null
          : Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
              ),
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Toplam:', style: TextStyle(color: Colors.grey)),
                        Text(
                          '${total.toStringAsFixed(0)} ₺',
                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.indigo),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Siparişiniz alındı!')),
                        );
                        setState(() {
                          ProductData.cartItems.clear();
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      ),
                      child: const Text('Satın Al'),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
