import 'package:flutter/material.dart';
import 'package:nike_ecom/components/cart_item.dart';
import 'package:nike_ecom/models/cart.dart';
import 'package:nike_ecom/models/shoes.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) {
        return Column(
          children: [
            Text(
              'My Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),

            SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: cart.getUserCart().length,
                itemBuilder: (context, index) {
                  Shoe individualShoe = cart.getUserCart()[index];
                  return CartItem(shoe: individualShoe);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
