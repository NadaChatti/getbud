import 'package:flutter/material.dart';
import 'package:getbud/themes/button_styles.dart';

class BasicButton extends StatelessWidget {
  final Function()? onPressed;
  final ButtonStyle? style;
  final Widget child;

  const BasicButton({
    super.key,
    required this.onPressed,
    this.style,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: Theme.of(context)
          .extension<ButtonStyles>()
          ?.basic!
          .copyWith()
          .merge(style),
      child: child,
    );
  }
}

class SubmitButton extends StatelessWidget {
  final Function()? onPressed;
  final ButtonStyle? style;
  final Widget child;

  const SubmitButton({
    super.key,
    required this.onPressed,
    this.style,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: Theme.of(context)
          .extension<ButtonStyles>()
          ?.submit!
          .copyWith()
          .merge(style),
      child: child,
    );
  }
}

class CancelButton extends StatelessWidget {
  final Function()? onPressed;
  final ButtonStyle? style;

  final Widget child;
  const CancelButton({
    super.key,
    required this.onPressed,
    this.style,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: Theme.of(context)
          .extension<ButtonStyles>()
          ?.cancel!
          .copyWith()
          .merge(style),
      child: child,
    );
  }
}

//TODO IconButton
class AppIconButton extends StatelessWidget {
  final Function()? onPressed;
  final Color? color;
  final double? iconSize;
  final IconData icon;

  const AppIconButton({
    super.key,
    required this.onPressed,
    this.color,
    this.iconSize,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
      ),
      iconSize: iconSize,
      color: color ?? Theme.of(context).colorScheme.primary,
      onPressed: onPressed,
      style: ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}
