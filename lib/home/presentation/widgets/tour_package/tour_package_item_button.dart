import 'package:flutter/material.dart';
import 'package:travel_app/core/core.dart';

class TourPackageItemButton extends StatelessWidget {
  const TourPackageItemButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: Size(345 * AppSizes.wratio, 40 * AppSizes.hratio),
        backgroundColor: AppColors.mainGreen,
        foregroundColor: Colors.white,
        elevation: 5,
      ),
      child: const Text(
        "Batafsil...",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
