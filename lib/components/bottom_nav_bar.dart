import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: GNav(
          color: Colors.grey,
          activeColor: Colors.grey.shade800,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade300,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 16,
          onTabChange: (value) => onTabChange!(value),
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Shop',),
        
              GButton(
              icon: Icons.shopping_cart_checkout_rounded,
              text: 'Cart',)
          ]),
      ),
    );
  }
}