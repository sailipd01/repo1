import 'package:flutter/material.dart';
import 'order.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QuickBite"),
        centerTitle: false,
        actions: [
          Icon(Icons.shopping_cart),
          SizedBox(width: 10),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            // 🔹 Burgers
            Container(
              height: 150,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/burger.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text("Burgers"),
            ),

            SizedBox(height: 15),

            // 🔹 Pizza
            Container(
              height: 150,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/pizza.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text("Pizza"),
            ),

            SizedBox(height: 15),

            // 🔹 Desserts
            Container(
              height: 150,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/dessert.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text("Desserts"),
            ),

            SizedBox(height: 20),

            // 🔹 Order Button
            TextButton(
              child: Text("Order Now"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => OrderScreen()),
                );
              },
            ),

            SizedBox(height: 20),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Menu",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ],
      ),
    );
  }
}