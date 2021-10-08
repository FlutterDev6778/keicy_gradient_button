library keicy_gradient_button;

import 'package:flutter/material.dart';

class KeicyGradientButton extends StatelessWidget {
  final String? text;
  final TextStyle? textStyle;
  final Widget? child;
  final Gradient? gradient;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;
  final Function()? onPressed;
  final Function()? onLongPress;

  const KeicyGradientButton({
    Key? key,
    @required this.gradient,
    this.text,
    this.textStyle,
    this.child,
    this.width,
    this.height,
    this.padding,
    this.borderRadius = 0,
    this.onPressed,
    this.onLongPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          gradient: gradient,
        ),
        child: child ??
            Center(
              child: Text(
                text ?? "",
                style: textStyle,
              ),
            ),
      ),
    );
  }
}
