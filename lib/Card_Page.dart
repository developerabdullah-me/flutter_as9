import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shopping Cart'),
        ),
        body: ShoppingCartScreen(),
      ),
    );
  }
}

class ShoppingCartScreen extends StatefulWidget {
  @override
  _ShoppingCartScreenState createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  int itemCount = 0;
  double unitPrice = 10.0;

  void incrementItem() {
    setState(() {
      itemCount=itemCount+1;
    });
  }

  void decrementItem() {
    if (itemCount > 0) {
      setState(() {
        itemCount--;
      });
    }
  }

  void showCongratulatoryMessage() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Congratulations! Checkout successful.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double totalPrice = itemCount * unitPrice;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
             Card(
            margin: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Image.network(
                  'https://i.ibb.co/k1vX89C/product-8.png', // Replace with your image path
                  width: 200.0,
                  height: 200.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Details:',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      Text(
                        'Size: M',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      Text(
                        'Price: \$10',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.all(16.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Item Count: $itemCount',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Text(
                    'Unit Price: \$${unitPrice.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Text(
                    'Total Amount: \$${totalPrice.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: decrementItem,
                        iconSize: 32.0,
                      ),
                      SizedBox(width: 16.0),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: incrementItem,
                        iconSize: 32.0,
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: showCongratulatoryMessage,
                    child: Text('CHECK OUT'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
