import 'dart:async';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/core.dart';
import 'package:travel_app/package_detail/presentation/pages/package_calendar_days.dart';
import 'package:travel_app/package_detail/presentation/pages/package_detail_view_model.dart';

class TitleAndDescription extends StatelessWidget {
  const TitleAndDescription({
    super.key,
    required this.title,
    required this.description,
  });

  final String title, description;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 398 * AppSizes.wratio,
        // height: 88 * AppSizes.hratio,
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 9),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFC4C4C4),
              offset: Offset(1, 1),
              blurRadius: 4,
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: AppStyles.itemSectionTitle),
            Text(
              description,
              style: TextStyle(
                fontSize: 12 * AppSizes.wratio,
                fontWeight: FontWeight.bold,
                height: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
