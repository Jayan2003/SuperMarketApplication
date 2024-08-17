import 'package:flutter/material.dart';
import 'categorypage.dart'; // Import CategoryPage

class ProductTypeButton extends StatelessWidget {
  final String productType;

  ProductTypeButton({required this.productType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CategoryPage(productType: productType),
            ),
          );
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white), // Button background color
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black), // Button text color
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0)),
        ),
        child: Text(productType),
      ),
    );
  }
}
