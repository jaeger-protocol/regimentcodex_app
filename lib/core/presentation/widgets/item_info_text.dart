import 'package:flutter/material.dart';

class ItemInfoText extends StatelessWidget {
  const ItemInfoText(
    this.data, {
    this.color,
    Key? key,
  }) : super(key: key);

  final String data;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.headline6?.copyWith(
            color: color,
          ),
    );
  }
}
