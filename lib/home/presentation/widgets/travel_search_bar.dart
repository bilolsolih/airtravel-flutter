import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/core.dart';

class TravelSearchBar extends StatelessWidget {
  const TravelSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              height: 53,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: AppColors.searchBar,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  SvgPicture.asset("assets/icons/search.svg"),
                  const SizedBox(width: 5),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: AppColors.searchHint,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/filter.svg"),
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          SvgPicture.asset(
            "assets/icons/notifications.svg",
          ),
        ],
      ),
    );
  }
}
