import 'package:flutter/material.dart';
import 'home.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to QuickBite Ordering Page"),
            SizedBox(height: 20),

            ElevatedButton(
              child: Text("Home"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => HomeScreen()),
                );
              },
            ),

            ElevatedButton(
              child: Text("Place Order"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}