// Custom ThemeExtension to hold both button styles
import 'package:flutter/material.dart';
import 'package:getbud/constants/color_constats.dart';

class ButtonStyles extends ThemeExtension<ButtonStyles> {
  final ButtonStyle? basic;
  final ButtonStyle? submit;
  final ButtonStyle? cancel;

  // Button styles
  static final shapeStyle = OutlinedButton.styleFrom(
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    elevation: 2,
  );

  static final basicLight = shapeStyle.copyWith().merge(
    OutlinedButton.styleFrom(
      // disabledBackgroundColor: ,
      // disabledForegroundColor: ColorConstants.teceBlack20,
      side: const BorderSide(width: 0),
      // backgroundColor: ColorConstants.gray,
      // foregroundColor: ColorConstants.white,
    ),
  );

  static final submitLight = shapeStyle.copyWith().merge(
    OutlinedButton.styleFrom(
      disabledBackgroundColor: ColorConstants.grayFog,
      disabledForegroundColor: ColorConstants.grayCoin,
      side: const BorderSide(width: 0),
      backgroundColor: ColorConstants.purple,
      foregroundColor: ColorConstants.white,
      overlayColor: ColorConstants.white,
    ),
  );

  static final cancelLight = shapeStyle.copyWith().merge(
    OutlinedButton.styleFrom(
      disabledBackgroundColor: ColorConstants.grayCoin,
      disabledForegroundColor: ColorConstants.grayFog,
      side: WidgetStateBorderSide.resolveWith((Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return BorderSide(
            // color: ColorConstants.grayFog,
            width: 2,
          );
        }
        return BorderSide(
          // color: ColorConstants.purple,
          width: 2,
        );
      }),
      backgroundColor: ColorConstants.white,
      foregroundColor: ColorConstants.purple,
    ),
  );

  const ButtonStyles({
    required this.basic,
    required this.submit,
    required this.cancel,
  });

  @override
  ThemeExtension<ButtonStyles> copyWith({
    ButtonStyle? basic,
    ButtonStyle? submit,
    ButtonStyle? cancel,
  }) {
    return ButtonStyles(
      basic: basic ?? this.basic,
      submit: submit ?? this.submit,
      cancel: cancel ?? this.cancel,
    );
  }

  @override
  ThemeExtension<ButtonStyles> lerp(
    ThemeExtension<ButtonStyles>? other,
    double t,
  ) {
    if (other is! ButtonStyles) {
      return this;
    }
    return ButtonStyles(
      basic: ButtonStyle.lerp(basic, other.basic, t),
      submit: ButtonStyle.lerp(submit, other.submit, t),
      cancel: ButtonStyle.lerp(cancel, other.cancel, t),
    );
  }
}
