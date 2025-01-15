import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key, required this.onBackPressed});

  final Function() onBackPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: const Border.symmetric(
              horizontal: BorderSide(
                color: Colors.white,
              ),
              vertical: BorderSide(
                color: Colors.white,
              ))),
      child: GestureDetector(
        onTap: () {
          onBackPressed();
        },
        child: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }


}
