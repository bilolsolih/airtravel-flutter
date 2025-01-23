import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/auth/presentation/widgets/register_app_bar.dart';
import 'package:travel_app/core/core.dart';

class InitialPageView extends StatelessWidget {
  InitialPageView({super.key});

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RegisterAppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Ro'yxatdan o'tish",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            SizedBox(height: 80),
            Center(
              child: Container(
                width: 380 * AppSizes.wratio,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xD3D3D3FF),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 20),
                    SvgPicture.asset("assets/icons/phone.svg"),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: controller,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Telefon raqamingizni kiriting",
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: AppColors.mainGreen,
                elevation: 0,
                fixedSize: Size(380 * AppSizes.wratio, 58),
              ),
              child: Text("Ro'yxatdan o'tish"),
            ),
          ],
        ),
      ),
    );
  }
}
