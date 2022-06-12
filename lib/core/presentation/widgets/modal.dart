import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

Future<T?> showCodexModal<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  bool barrierDismissible = true,
}) {
  return showModal(
    context: context,
    configuration: FadeScaleTransitionConfiguration(
      barrierColor: Colors.transparent,
      transitionDuration: const Duration(milliseconds: 200),
      reverseTransitionDuration: const Duration(milliseconds: 90),
      barrierDismissible: barrierDismissible,
    ),
    builder: builder,
  );
}
