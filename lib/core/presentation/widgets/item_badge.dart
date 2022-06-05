import 'package:flutter/material.dart';
import 'package:regimentcodex/core/presentation/widgets/custom_box.dart';

class ItemBadge extends StatelessWidget {
  const ItemBadge({
    this.id,
    this.sigil,
    Key? key,
  }) : super(key: key);

  final int? id;
  final String? sigil;

  Widget badgeItem(BuildContext context) {
    if (id != null) {
      return Padding(
        padding: const EdgeInsets.all(1.0),
        child: Text(
          '${id ?? '-'}',
          maxLines: 1,
          style: Theme.of(context).textTheme.headline6,
        ),
      );
    }
    if (sigil != null && sigil!.isNotEmpty) {
      return Image.network(sigil!);
    }

    return const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0.0,
      child: CustomBox(
        height: 45,
        width: 45,
        padding: const EdgeInsets.all(4),
        border: Border.all(
          width: 1.4,
          color: const Color.fromRGBO(255, 255, 255, 1.0),
        ),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
        child: FittedBox(child: badgeItem(context)),
      ),
    );
  }
}
