import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.55),
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
      );
  static get bodyMediumBlack90013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
      );
  static get bodyMediumMontserratBlack900 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumff05ff00 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF05FF00),
      );
  static get bodyMediumff1a8600 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF1A8600),
      );
  static get bodyMediumff1d00d3 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF1D00D3),
      );
  static get bodyMediumffdd1313 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFDD1313),
      );
  // Title text style
  static get titleLarge22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 22.fSize,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontSize: 17.fSize,
      );
  static get titleMediumGray100 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray100,
        fontSize: 17.fSize,
      );
  static get titleMediumGreen900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green900,
        fontSize: 17.fSize,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 16.fSize,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
}

extension on TextStyle {
  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get josefinSans {
    return copyWith(
      fontFamily: 'Josefin Sans',
    );
  }

  TextStyle get inriaSans {
    return copyWith(
      fontFamily: 'Inria Sans',
    );
  }
}
