import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ItemPreviewBody extends StatefulWidget {
  const ItemPreviewBody({
    required this.builder,
    this.onPressedOrClicked,
    Key? key,
  }) : super(key: key);

  final Widget Function(bool isHovered) builder;
  final void Function()? onPressedOrClicked;

  @override
  State<ItemPreviewBody> createState() => _ItemPreviewBodyState();
}

class _ItemPreviewBodyState extends State<ItemPreviewBody> {
  Color? backgroundColor;
  bool isHovering = false;

  void onHover(PointerHoverEvent hoverEvent) {
    isHovering = true;
    setState(() => backgroundColor = Theme.of(context).colorScheme.onSurface);
  }

  void onExit(PointerExitEvent hoverEvent) {
    isHovering = false;
    setState(() => backgroundColor = Theme.of(context).colorScheme.surface);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressedOrClicked,
      child: MouseRegion(
        onHover: onHover,
        onExit: onExit,
        child: Container(
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: backgroundColor ?? Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(20),
          ),
          child: widget.builder(isHovering),
        ),
      ),
    );
  }
}