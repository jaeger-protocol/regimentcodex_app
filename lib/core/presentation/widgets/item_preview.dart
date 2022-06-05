import 'package:flutter/material.dart';
import 'package:regimentcodex/core/presentation/widgets/item_badge.dart';
import 'package:regimentcodex/core/presentation/widgets/item_preview_body.dart';
import 'package:regimentcodex/gen/assets.gen.dart';

class ItemPreview extends StatelessWidget {
  const ItemPreview({
    required this.footerBuilder,
    this.image,
    this.sigil,
    this.itemId,
    this.onPressedOrClicked,
    super.key,
  });

  final Widget Function(Color elementColor) footerBuilder;
  final String? image;
  final String? sigil;
  final int? itemId;
  final void Function()? onPressedOrClicked;

  static Color? elementColor;

  void updateElementColor(BuildContext context, bool isHovering) {
    switch (isHovering) {
      case true:
        elementColor = Theme.of(context).colorScheme.surface;
        break;
      case false:
        elementColor = Theme.of(context).colorScheme.onSurface;
        break;
    }
    elementColor ??= Theme.of(context).colorScheme.onSurface;
  }

  Widget itemImage() {
    final isNetworkImage = image?.contains('https') ?? false;
    if (isNetworkImage && image!.isNotEmpty) {
      return Image.network(
        image!,
        width: double.infinity,
        fit: BoxFit.cover,
      );
    }
    return Image.asset(
      image ?? Assets.phantomPlaceholder.path,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ItemPreviewBody(
      onPressedOrClicked: onPressedOrClicked,
      builder: (bool isHovering) {
        updateElementColor(context, isHovering);
        return Stack(
          fit: StackFit.expand,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 12.0),
              // TODO(Júlio): get rid of scroll here
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: itemImage(),
                    ),
                    const SizedBox(height: 20),
                    footerBuilder(elementColor!),
                  ],
                ),
              ),
            ),
            ItemBadge(id: itemId, sigil: sigil),
          ],
        );
      },
    );
  }
}
