import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final Function(String) onChanged;

  const SearchBarWidget({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: 'Ürün ara...',
          prefixIcon: const Icon(Icons.search),
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 0),
        ),
      ),
    );
  }
}
