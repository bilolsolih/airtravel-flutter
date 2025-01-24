import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/core.dart';
import 'package:travel_app/package_detail/presentation/pages/calendar.dart';
import 'package:travel_app/package_detail/presentation/pages/features.dart';
import 'package:travel_app/package_detail/presentation/pages/package_detail_view_model.dart';
import 'package:travel_app/package_detail/presentation/pages/stays_in_cities.dart';
import 'package:travel_app/package_detail/presentation/pages/title_and_description.dart';

class PackageDetailView extends StatelessWidget {
  const PackageDetailView({
    super.key,
    required this.viewModel,
  });

  final PackageDetailViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        leading: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: 48,
            height: 48,
            child: IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              icon: SvgPicture.asset("assets/icons/back-arrow.svg"),
            ),
          ),
        ),
      ),
      body: PackageDetailViewBody(viewModel: viewModel),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class PackageDetailViewBody extends StatefulWidget {
  const PackageDetailViewBody({
    super.key,
    required this.viewModel,
  });

  final PackageDetailViewModel viewModel;

  @override
  State<PackageDetailViewBody> createState() => _PackageDetailViewBodyState();
}

class _PackageDetailViewBodyState extends State<PackageDetailViewBody> {
  final controller = PageController();
  int currentIndex = 0;
  late int imagesCount = widget.viewModel.package.images.length;
  Timer? timer;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(
      Duration(seconds: 3),
      (what) => controller.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.linear,
      ),
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: widget.viewModel,
      builder: (context, _) => switch (widget.viewModel.loading) {
        true => const Center(child: CircularProgressIndicator()),
        false => ListView(
            children: [
              // SizedBox(
              //   height: 312 * AppSizes.hratio,
              //   child: Stack(
              //     children: [
              //       PageView.builder(
              //         controller: controller,
              //         onPageChanged: (index) => setState(() {
              //           currentIndex = index % imagesCount;
              //         }),
              //         itemBuilder: (context, index) {
              //           final int actualIndex = index % imagesCount;
              //           return Image.asset(
              //             widget.viewModel.package.images[actualIndex],
              //             height: 312 * AppSizes.hratio,
              //             fit: BoxFit.cover,
              //           );
              //         },
              //       ),
              //       Positioned(
              //         bottom: 10,
              //         left: 0,
              //         right: 0,
              //         child: Row(
              //           spacing: 3,
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: List<Widget>.generate(
              //             imagesCount,
              //             (index) => AnimatedContainer(
              //               duration: const Duration(milliseconds: 300),
              //               width: index == currentIndex ? 32 : 8,
              //               height: 8,
              //               decoration: BoxDecoration(
              //                 color: Colors.white,
              //                 borderRadius: BorderRadius.circular(4),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // const SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 13 * AppSizes.wratio),
                child: Column(
                  spacing: 16,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // TitleAndDescription(
                    //   title: widget.viewModel.package.title,
                    //   description: widget.viewModel.package.description,
                    // ),
                    // StaysInCities(stays: widget.viewModel.package.stays),
                    // Features(features: widget.viewModel.package.features),
                    Calendar(calendar: widget.viewModel.package.calendar),
                  ],
                ),
              ),
            ],
          ),
      },
    );
  }
}
