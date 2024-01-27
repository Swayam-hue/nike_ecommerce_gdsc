import 'package:flutter/material.dart';
import 'package:nike_ecom/models/shoes.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key,
  required this.shoe,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.shoe.imagepath),
      title: Image.asset(widget.shoe.name),
      subtitle: Image.asset(widget.shoe.price),
    );
  }
}