import 'package:flutter/material.dart';
import 'package:travel_app/core/presentation/widgets/bottom_nav_bar/bottom_nav_bar_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 56,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavBarItem(
              label: "Home", image: "assets/icons/home.svg", selected: true),
          BottomNavBarItem(
              label: "Cart", image: "assets/icons/cart.svg", selected: false),
          BottomNavBarItem(
              label: "Orders",
              image: "assets/icons/orders.svg",
              selected: false),
          BottomNavBarItem(
              label: "Wallet",
              image: "assets/icons/wallet.svg",
              selected: false),
          BottomNavBarItem(
              label: "Profile",
              image: "assets/icons/profile.svg",
              selected: false),
        ],
      ),
    );
  }
}
