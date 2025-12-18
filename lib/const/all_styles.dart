import 'package:ecomarce1/const/all_colors.dart';
import 'package:ecomarce1/const/all_sizes.dart';
import 'package:flutter/painting.dart';

class AllStyles {
  static final headingStyle = TextStyle(
    fontFamily: 'GooleSans',
    fontSize: AllSizes.large,
    fontWeight: FontWeight.bold,
    color: AllColors.darkColor,
  );
  static final titleStyle = TextStyle(
    fontFamily: 'GooleSans',
    fontSize: AllSizes.medium,
    fontWeight: FontWeight.bold,
    color: AllColors.darkColor,
  );
  static final subtitleStyle = TextStyle(
    fontFamily: 'GooleSans',
    fontSize: AllSizes.small,
    fontWeight: FontWeight.bold,
    color: AllColors.darkColor,
  );
}