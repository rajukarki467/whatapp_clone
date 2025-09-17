import 'package:flutter/material.dart';
import 'package:whatapp_clone/widgets/uihelper.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            UiHelper.CustomText(
              text: "profile info",
              height: 20,
              color: Color(0xff00a884),
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 35),
            UiHelper.CustomText(
              text: "Please provide your name and an optional ",
              height: 14,
            ),
            SizedBox(height: 10),
            UiHelper.CustomText(text: "profile photo", height: 14),
            SizedBox(height: 20),
            CircleAvatar(
              radius: 80,
              backgroundColor: Color(0xffd9d9d9),
              child: Image.asset(
                'assets/images/photo-camera 1.png',
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 280,
                  child: TextField(
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: "Type your name here",
                      hintStyle: TextStyle(color: Color(0xff5e5e5e)),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff05aa82)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff05aa82)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff05aa82)),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Image.asset("assets/images/happy-face 1.png"),
              ],
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
