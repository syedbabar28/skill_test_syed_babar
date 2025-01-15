import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CaptionButton extends StatelessWidget {
  const CaptionButton(
      {super.key,
      required this.isCaptionEnabled,
      required this.onCaptionPressed});

  final RxBool isCaptionEnabled;
  final Function() onCaptionPressed;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                color: isCaptionEnabled.value ? Colors.white : Colors.white),
            color: isCaptionEnabled.value ? Colors.white : Colors.blue),
        child: GestureDetector(
          onTap: () {
            onCaptionPressed();
          },
          child: Text(
            "A",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: isCaptionEnabled.value ? Colors.blue : Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
      );
    });
  }
}
