import 'package:flutter/material.dart';
import 'package:travel_app/core/core.dart';
import 'package:travel_app/package_detail/presentation/pages/activity_item_handle.dart';

class AccommodationItem extends StatelessWidget {
  const AccommodationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 340 * AppSizes.wratio,
        child: Stack(
          alignment: Alignment.centerRight,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 284 * AppSizes.wratio,
              height: 124 * AppSizes.hratio,
              padding: EdgeInsets.fromLTRB(52, 22, 16, 22),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Uchish",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "8:30 am",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 5,
                        children: [
                          Text(
                            "Qayerdan",
                            style: TextStyle(
                              color: Color(0xFFC4C4C4),
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            "Qayerga",
                            style: TextStyle(
                              color: Color(0xFFC4C4C4),
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 5,
                        children: [
                          Text(
                            "Toshkent",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            "Madina",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20)
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              left: -25,
              child: ActivityItemHandle(image: "assets/icons/hotel.svg"),
            ),
          ],
        ),
      ),
    );
  }
}
