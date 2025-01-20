import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/core.dart';

class TravelSvgPictureInContainer extends StatelessWidget {
  const TravelSvgPictureInContainer({
    super.key,
    required this.image,
    required this.width,
    required this.height,
    required this.containerWidth,
    required this.containerHeight,
    this.color = Colors.white,
    this.containerColor = AppColors.mainGreen,
  });

  final String image;
  final Color color, containerColor;
  final double width, height, containerWidth, containerHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      height: containerHeight,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: SvgPicture.asset(
        image,
        width: width,
        height: height,
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      ),
    );
  }
}
