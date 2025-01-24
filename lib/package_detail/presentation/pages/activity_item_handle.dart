import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/core.dart';

class ActivityItemHandle extends StatelessWidget {
  const ActivityItemHandle({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 129 * AppSizes.wratio,
        height: 75 * AppSizes.hratio,
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            SvgPicture.asset("assets/icons/activity-handle.svg"),
            Positioned(
              right: 28,
              child: Center(
                child: SvgPicture.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
