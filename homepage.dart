import 'package:flutter/material.dart';
import 'productTypeButton.dart'; // Import ProductTypeButton

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Supermarket App',style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ProductTypeButton(productType: 'Food'),
            SizedBox(height: 20),
            ProductTypeButton(productType: 'Drinks'),
            SizedBox(height: 20),
            ProductTypeButton(productType: 'Snacks'),
          ],
        ),
      ),
    );
  }
}
