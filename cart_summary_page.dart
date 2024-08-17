import 'package:flutter/material.dart';
import 'cart_manager.dart';

class CartSummaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartItems = CartManager().cartItems;
    final totalPrice = CartManager().totalPrice;

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Summary'),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return Card(
                  margin: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Image.asset(
                      item.imageUrl,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                    title: Text(item.name),
                    subtitle: Text('Quantity: ${item.quantity}\nPrice per unit: \$${item.price.toStringAsFixed(2)}'),
                    trailing: Text('\$${item.totalPrice.toStringAsFixed(2)}'),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Total Price: \$${totalPrice.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ),
        ],
      ),
    );
  }
}
