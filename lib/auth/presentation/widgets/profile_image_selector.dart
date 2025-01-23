import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travel_app/auth/presentation/pages/register_view_model.dart';

class ProfileImageSelector extends StatelessWidget {
  const ProfileImageSelector({
    super.key,
    required this.viewModel,
  });

  final RegisterViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, widget) => Center(
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundColor: Colors.transparent,
              child: viewModel.image != null
                  ? ProfileImage(image: viewModel.image!)
                  : Image.asset(
                      viewModel.defaultProfileImage,
                      fit: BoxFit.fill,
                    ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              icon: SvgPicture.asset(
                "assets/icons/edit.svg",
                width: 29,
                height: 29,
                fit: BoxFit.cover,
              ),
              onPressed: () => viewModel.pickImage(),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
    required this.image,
  });

  final File image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 140,
        width: 140,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(70),
          child: Image.file(image, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
