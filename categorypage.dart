import 'package:flutter/material.dart';
import 'cart_item.dart';
import 'product.dart';
import 'product_data.dart';
import 'cart_manager.dart';
import 'cart_summary_page.dart';

class CategoryPage extends StatelessWidget {
  final String productType;

  CategoryPage({required this.productType});

  List<Product> getProducts() {
    switch (productType) {
      case 'Food':
        return foodProducts;
      case 'Drinks':
        return drinkProducts;
      case 'Snacks':
        return snackProducts;
      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Product> products = getProducts();

    return Scaffold(
      appBar: AppBar(
        title: Text('$productType Products'),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartSummaryPage(),
                ),
              );
            },
          ),
        ],
      ),
      backgroundColor: Colors.blueGrey,
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.asset(
                product.imageUrl,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(product.name),
              subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.add_shopping_cart),
                    onPressed: () {
                      CartManager().addToCart(CartItem(
                        name: product.name,
                        price: product.price,
                        imageUrl: product.imageUrl,
                      ));
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.remove_circle_outline),
                    onPressed: () {
                      CartManager().removeFromCart(CartItem(
                        name: product.name,
                        price: product.price,
                        imageUrl: product.imageUrl,
                      ));

                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
