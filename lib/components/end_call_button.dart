import 'package:flutter/material.dart';

class EndCallButton extends StatelessWidget {
  const EndCallButton({super.key, required this.onCallEndPressed});

  final Function() onCallEndPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.red),
      child: GestureDetector(
        onTap: () {
          onCallEndPressed();
        },
        child: const Icon(
          Icons.call_end,
          color: Colors.white,
          size: 35,
        ),
      ),
    );
  }
}
