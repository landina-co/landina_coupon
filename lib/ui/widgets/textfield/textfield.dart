import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class LandinaTextField extends StatelessWidget {
  final String hintText;
  final IconData suffixIcon;
  final VoidCallback suffixIconOnPressed;
  final IconData prefixIcon;
  final VoidCallback prefixIconOnPressed;
  const LandinaTextField({
    Key? key,
    required this.hintText,
    required this.suffixIcon,
    required this.suffixIconOnPressed,
    required this.prefixIcon,
    required this.prefixIconOnPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: const Color(0xffF1F1F1)),
        borderRadius: const SmoothBorderRadius.only(
          topLeft: SmoothRadius(
            cornerRadius: 12,
            cornerSmoothing: 0.5,
          ),
          topRight: SmoothRadius(
            cornerRadius: 12,
            cornerSmoothing: 0.5,
          ),
          bottomLeft: SmoothRadius(
            cornerRadius: 12,
            cornerSmoothing: 0.5,
          ),
          bottomRight: SmoothRadius(
            cornerRadius: 12,
            cornerSmoothing: 0.5,
          ),
        ),
      ),
      child: TextField(
        style: const TextStyle(fontSize: 15),
        cursorColor: const Color(0xff3B3B3B),
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          hintStyle: const TextStyle(
            fontSize: 15,
          ),
          focusColor: Colors.black,
          border: InputBorder.none,
          prefixIcon: IconButton(
            onPressed: prefixIconOnPressed,
            icon: Icon(
              prefixIcon,
              color: const Color(0xff3b3b3b).withOpacity(0.5),
            ),
          ),
          suffixIcon: Container(
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(
                  width: 1,
                  color: Color(0xffF1F1F1),
                ),
              ),
            ),
            child: IconButton(
              onPressed: suffixIconOnPressed,
              icon: Icon(
                suffixIcon,
                color: const Color(0xff3b3b3b).withOpacity(0.5),
              ),
            ),
          ),
        ),
      ),
    );
  }
}