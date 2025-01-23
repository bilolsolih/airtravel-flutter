import 'package:flutter/material.dart';
import 'package:travel_app/auth/presentation/widgets/profile_image_selector.dart';
import 'package:travel_app/auth/presentation/widgets/register_app_bar.dart';
import 'package:travel_app/auth/presentation/widgets/register_text_field.dart';

import 'register_view_model.dart';

class RegisterPageView extends StatelessWidget {
  const RegisterPageView({
    super.key,
    required this.viewModel,
  });

  final RegisterViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RegisterAppBar(title: "Ma'lumotlarni kiriting"),
      body: SingleChildScrollView(
        child: Column(
          spacing: 24,
          children: [
            ProfileImageSelector(viewModel: viewModel),
            RegisterTextField(hintText: "Ismingiz"),
            RegisterTextField(hintText: "Familyangiz"),
            RegisterTextField(hintText: "+998-90-123-45-67"),
            RegisterTextField(hintText: "Viloyatingiz"),
          ],
        ),
      ),
    );
  }
}
