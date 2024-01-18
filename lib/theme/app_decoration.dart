import 'package:flutter/material.dart';
import 'package:syncserve/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10004,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillGray10003 => BoxDecoration(
        color: appTheme.gray10003,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static BoxDecoration get fillOnPrimary1 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(0.04),
      );
  static BoxDecoration get fillOnPrimary2 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Gradient decorations
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [
            appTheme.gray5001,
            appTheme.gray10002,
            appTheme.gray5001,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.06),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.03),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGrayA => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray9000a,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineDeepOrangeA => BoxDecoration(
        border: Border.all(
          color: appTheme.deepOrangeA400,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray80019,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              30,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray80019 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray80019,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              20,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder64 => BorderRadius.circular(
        64.h,
      );
  static BorderRadius get circleBorder79 => BorderRadius.circular(
        79.h,
      );
  static BorderRadius get circleBorder82 => BorderRadius.circular(
        82.h,
      );
  static BorderRadius get circleBorder99 => BorderRadius.circular(
        99.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder7 => BorderRadius.circular(
        7.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
