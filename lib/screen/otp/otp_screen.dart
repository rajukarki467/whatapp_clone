import 'package:flutter/material.dart';
import 'package:whatapp_clone/widgets/uihelper.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key, required this.phonenumber});
  final String phonenumber;
  @override
  Widget build(BuildContext context) {
    List<TextEditingController> otpControllers = List.generate(
      6,
      (index) => TextEditingController(),
    );
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            UiHelper.CustomText(
              text: "Verifying your number",
              height: 20,
              color: Color(0xff00a884),
            ),
            SizedBox(height: 30),
            UiHelper.CustomText(
              text: "You've tried to register +977${phonenumber}",
              height: 15,
            ),
            SizedBox(height: 30),
            UiHelper.CustomText(
              text: "recently. Wait before requesting an sms or a call. ",
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "with your code.", height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: UiHelper.CustomText(
                    text: "Wrong number?",
                    height: 15,
                    color: Color(0xff00a884),
                  ),
                ),
              ],
            ),
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (int i = 0; i < otpControllers.length; i++)
                  UiHelper.customContainer(otpControllers[i]),
              ],
            ),
            SizedBox(height: 30),
            UiHelper.CustomText(
              text: "Didn't receive code?",
              height: 14,
              color: Color(0xff00a884),
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        callback: () {},
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
