import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/core.dart';

class RegisterAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RegisterAppBar({
    super.key,
    this.title = "",
  });

  final String title;

  @override
  Size get preferredSize => const Size(double.infinity, 80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Color(0xFF4B4B4B),
        ),
      ),
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          "assets/icons/back-arrow.svg",
          colorFilter: ColorFilter.mode(
            AppColors.mainGreen,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
