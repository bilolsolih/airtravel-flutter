import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/core.dart';

class ActivityItem extends StatelessWidget {
  const ActivityItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 352 * AppSizes.wratio,
        child: Stack(
          alignment: Alignment.centerRight,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 284 * AppSizes.wratio,
              height: 124 * AppSizes.hratio,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.25), blurRadius: 4)],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
              ),
            ),
            Positioned(
              left: -25,
              child: Center(
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
                            "assets/icons/plane.svg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
