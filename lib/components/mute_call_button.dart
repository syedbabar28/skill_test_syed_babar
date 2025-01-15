import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MuteCallButton extends StatelessWidget {
  MuteCallButton(
      {super.key,
      required this.isMuted,
      required this.margin,
      required this.onMuteCallPressed});

  RxBool isMuted;
  EdgeInsetsGeometry? margin;
  final Function() onMuteCallPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: const EdgeInsets.all(20),
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: GestureDetector(
        onTap: () {
          onMuteCallPressed();
        },
        child: Obx(() {
          return Icon(
            isMuted.value ? Icons.mic_off : Icons.mic,
            color: Colors.blue,
            size: 35,
          );
        }),
      ),
    );
  }
}
