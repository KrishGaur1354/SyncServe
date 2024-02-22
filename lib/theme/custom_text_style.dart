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
  static get bodyLargeBlack900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeRobotoBluegray90002 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.blueGray90002,
        fontSize: 16.fSize,
      );
  static get bodyLargeRobotoGray700 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.gray700,
        fontSize: 16.fSize,
      );
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMedium15_1 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumABeeZeeBluegray30001 =>
      theme.textTheme.bodyMedium!.aBeeZee.copyWith(
        color: appTheme.blueGray30001,
        fontSize: 14.fSize,
      );
  static get bodyMediumMontserratBlack900 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get bodyMediumRobotoBluegray90002 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blueGray90002,
        fontSize: 14.fSize,
      );
  static get bodyMediumff000000 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF000000),
        fontSize: 15.fSize,
      );
  static get bodyMediumff05ff00 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF05FF00),
        fontSize: 15.fSize,
      );
  static get bodyMediumff1a8600 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF1A8600),
        fontSize: 15.fSize,
      );
  static get bodyMediumff1d00d3 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF1D00D3),
        fontSize: 15.fSize,
      );
  static get bodyMediumffdd1313 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFDD1313),
        fontSize: 15.fSize,
      );
  static get bodySmallBluegray90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodySmallMulishBluegray30002 =>
      theme.textTheme.bodySmall!.mulish.copyWith(
        color: appTheme.blueGray30002,
      );
  static get bodySmallRobotoBluegray400 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallRobotoBluegray600 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.blueGray600,
      );
  static get bodySmallRobotoGray50001 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.gray50001,
      );
  // Title text style
  static get titleLargeAveriaSerifLibreOnPrimaryContainer =>
      theme.textTheme.titleLarge!.averiaSerifLibre.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.67),
      );
  static get titleLargeDMSansGray90001 =>
      theme.textTheme.titleLarge!.dMSans.copyWith(
        color: appTheme.gray90001,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargePrimary23 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 23.fSize,
      );
  static get titleLargeRobotoBluegray90002 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.blueGray90002,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeRobotoPrimary =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack90018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
      );
  static get titleMediumGreen900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green900,
      );
  static get titleMediumMulishBluegray60001 =>
      theme.textTheme.titleMedium!.mulish.copyWith(
        color: appTheme.blueGray60001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumMulishBluegray900 =>
      theme.textTheme.titleMedium!.mulish.copyWith(
        color: appTheme.blueGray900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumMulishOnPrimary =>
      theme.textTheme.titleMedium!.mulish.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSansBluegray90002 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.blueGray90002,
        fontSize: 18.fSize,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumPrimary18 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get titleMediumRobotoBluegray90002 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.blueGray90002,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallDMSansGray90001 =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: appTheme.gray90001,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRobotoPrimary =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.primary,
      );
}

extension on TextStyle {
  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get mulish {
    return copyWith(
      fontFamily: 'Mulish',
    );
  }

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

  TextStyle get aBeeZee {
    return copyWith(
      fontFamily: 'ABeeZee',
    );
  }

  TextStyle get averiaSerifLibre {
    return copyWith(
      fontFamily: 'Averia Serif Libre',
    );
  }

  TextStyle get inriaSans {
    return copyWith(
      fontFamily: 'Inria Sans',
    );
  }
}
