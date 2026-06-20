import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/product.dart';

class ProductData {
  static List<Product> cartItems = [];

  static Future<List<Product>> loadProducts() async {
    final String response = await rootBundle.loadString('assets/products.json');
    final data = await json.decode(response);
    return (data as List).map((e) => Product.fromJson(e)).toList();
  }
}
