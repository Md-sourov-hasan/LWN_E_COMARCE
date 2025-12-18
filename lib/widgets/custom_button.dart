import 'package:ecomarce1/const/all_colors.dart';
import 'package:ecomarce1/const/all_sizes.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  double height;
  double width;
  String label;
  Color  ? labelColor=AllColors.darkColor;
  Color color;
  VoidCallback onTap;
   CustomButton({super.key,
   required this.height,
    required this.width,
     required this.label,
       this.labelColor,
       required this.color,
        required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(60),
        ),
        child: Center(
          child: Text(label,
          style: TextStyle(
            color: labelColor,
            fontSize:AllSizes.large,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),
    );
  }
}