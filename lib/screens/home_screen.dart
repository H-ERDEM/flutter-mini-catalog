import 'package:flutter/material.dart';
import '../data/product_data.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';
import '../widgets/search_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Product> allProducts = [];
  List<Product> filteredProducts = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final products = await ProductData.loadProducts();
    setState(() {
      allProducts = products;
      filteredProducts = products;
      isLoading = false;
    });
  }

  void _filterProducts(String query) {
    setState(() {
      filteredProducts = allProducts
          .where((p) => p.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : CustomScrollView(
              slivers: [
                // Modern Esnek AppBar
                SliverAppBar(
                  floating: true,
                  pinned: true,
                  expandedHeight: 120,
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  flexibleSpace: FlexibleSpaceBar(
                    title: const Text('Mini Katalog', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    centerTitle: true,
                  ),
                  actions: [
                    _buildCartIcon(),
                    const SizedBox(width: 16),
                  ],
                ),
                
                // Arama Çubuğu
                SliverToBoxAdapter(
                  child: SearchBarWidget(onChanged: _filterProducts),
                ),

                // Kampanya Bannerı
                SliverToBoxAdapter(
                  child: _buildBanner(),
                ),

                // Başlık
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(16, 24, 16, 8),
                    child: Text(
                      'Trend Ürünler',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                // Ürünler Grid (30 Ürün Burada Listelenir)
                SliverPadding(
                  padding: const EdgeInsets.all(16),
                  sliver: SliverGrid(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final product = filteredProducts[index];
                        return ProductCard(
                          product: product,
                          onTap: () async {
                            await Navigator.pushNamed(
                              context,
                              '/detail',
                              arguments: product,
                            );
                            setState(() {}); // Geri gelince sepet sayısını güncelle
                          },
                        );
                      },
                      childCount: filteredProducts.length,
                    ),
                  ),
                ),
                
                // Sayfa sonu boşluğu
                const SliverToBoxAdapter(child: SizedBox(height: 50)),
              ],
            ),
    );
  }

  Widget _buildCartIcon() {
    return Stack(
      alignment: Alignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.shopping_cart_outlined, size: 28),
          onPressed: () async {
            await Navigator.pushNamed(context, '/cart');
            setState(() {});
          },
        ),
        if (ProductData.cartItems.isNotEmpty)
          Positioned(
            right: 4,
            top: 4,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
              constraints: const BoxConstraints(minWidth: 18, minHeight: 18),
              child: Text(
                '${ProductData.cartItems.length}',
                style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildBanner() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.indigo, Colors.indigo.shade300]),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Büyük İndirim!',
            style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Tüm teknoloji ürünlerinde sepette %20 indirim.',
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.indigo),
            child: const Text('Hemen İncele'),
          ),
        ],
      ),
    );
  }
}
