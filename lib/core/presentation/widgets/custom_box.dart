import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  const CustomBox({
    Key? key,
    this.child,
    this.height,
    this.width,
    this.margin,
    this.border,
    this.color,
    this.alignment,
    this.borderRadius,
    this.constraints,
    this.padding,
  }) : super(key: key);

  final double? height;
  final double? width;
  final Widget? child;
  final Color? color;
  final BoxBorder? border;
  final AlignmentGeometry? alignment;
  final BoxConstraints? constraints;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: alignment,
      padding: padding,
      margin: margin,
      constraints: constraints,
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).colorScheme.surface,
        border: border,
        borderRadius: borderRadius ?? BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}
