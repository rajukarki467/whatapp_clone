import 'package:flutter/material.dart';

class UiHelper {
  static CustomButton({
    required VoidCallback callback,
    required String buttonname,
  }) {
    return SizedBox(
      height: 45,
      width: 300,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        child: Text(
          buttonname,
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(40),
          ),
        ),
      ),
    );
  }

  static CustomText({
    required String text,
    required double height,
    Color? color,
    FontWeight? fontWeight,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: height,
        color: color ?? Color(0xff5e5e5e),
        fontWeight: fontWeight,
      ),
    );
  }

  static customContainer(TextEditingController controller) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffd9d9d9d),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(border: InputBorder.none),
        ),
      ),
    );
  }
}
