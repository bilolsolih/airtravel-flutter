import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/core.dart';
import 'package:travel_app/package_detail/presentation/pages/package_detail_view_model.dart';

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
              SizedBox(
                height: 312 * AppSizes.hratio,
                child: Stack(
                  children: [
                    PageView.builder(
                      controller: controller,
                      onPageChanged: (index) => setState(() {
                        currentIndex = index % imagesCount;
                      }),
                      itemBuilder: (context, index) {
                        final int actualIndex = index % imagesCount;
                        return Image.asset(
                          widget.viewModel.package.images[actualIndex],
                          height: 312 * AppSizes.hratio,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                    Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Row(
                        spacing: 3,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List<Widget>.generate(
                          imagesCount,
                          (index) => AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: index == currentIndex ? 32 : 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 13 * AppSizes.wratio),
                child: Column(
                  spacing: 16,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
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
                            Text(widget.viewModel.package.title, style: AppStyles.itemSectionTitle),
                            Text(
                              widget.viewModel.package.description,
                              style: TextStyle(
                                fontSize: 12 * AppSizes.wratio,
                                fontWeight: FontWeight.bold,
                                height: 1.2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      spacing: 10,
                      children: [for (var stay in widget.viewModel.package.stays) DaysInCity(days: stay.days, city: stay.city)],
                    ),
                    Column(
                      spacing: 16,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Sayohat tarkibi", style: AppStyles.itemSectionTitle),
                        Wrap(
                          spacing: 6,
                          runSpacing: 12,
                          children: [
                            for (var feature in widget.viewModel.package.features) TourPackageFeature(text: feature.title),
                          ],
                        ),
                      ],
                    ),
                    Text("Sayohat kundaligi", style: AppStyles.itemSectionTitle),
                    Container(
                      width: 397 * AppSizes.wratio,
                      height: 552,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [BoxShadow(color: Color(0xFFC4C4C4), blurRadius: 4)],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
      },
    );
  }
}
