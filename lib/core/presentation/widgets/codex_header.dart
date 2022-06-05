import 'package:flutter/material.dart';
import 'package:regimentcodex/generated/l10n.dart';

class CodesHeader extends StatelessWidget {
  const CodesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 30.0, 16.0, 16.0),
      child: Row(
        children: [
          Text(
            RCLocal.of(context).pxn,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  letterSpacing: 5,
                ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
