import 'package:flutter/material.dart';
import 'package:whatapp_clone/widgets/uihelper.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/boarding.png"),
            SizedBox(height: 20),
            UiHelper.CustomText(
              text: "Welcome to WhatsApp",
              height: 20,
              color: Color(0xff000000),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "Read out", height: 12),
                UiHelper.CustomText(
                  text: " Privacy and Policy ",
                  height: 12,
                  color: Color(0xff0c42cc),
                ),
                UiHelper.CustomText(
                  text: "Tap ''Agree and continue''",
                  height: 12,
                ),
              ],
            ),
            SizedBox(height: 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: " to accept the  ", height: 12),
                UiHelper.CustomText(
                  text: "Teams od Services ",
                  height: 12,
                  color: Color(0xff0c42cc),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        callback: () {},
        buttonname: "Agree and Continue",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
