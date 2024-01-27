import 'package:flutter/material.dart';
import 'shoes.dart';

class Cart with ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      'Air Max Ishod',
      '150',
      'lib/images/air-max-ishod-shoes-pJPHs6.png',
      'It is a nice shoe.',
    ),
    Shoe(
      'Air Max Pusle Roam',
      '250',
      'lib/images/air-max-pulse-roam-shoes-NSfkP0.png',
      'A better shoe.',
    ),
    Shoe(
      'Dunk Low Retro',
      '80',
      'lib/images/dunk-low-retro-shoes-69h36X.png',
      'A much better shoe.',
    ),
  ];

  // list of items in cart
  List<Shoe> userCart = [];

  // get list for shoes in sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItem(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners(); // Notify listeners when the state changes
  }

  // remove items from cart
  void removeItem(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners(); // Notify listeners when the state changes
  }
}
