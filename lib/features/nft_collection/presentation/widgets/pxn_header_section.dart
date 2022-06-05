part of nft_collection;

class PXNPreviewHeader extends StatelessWidget {
  const PXNPreviewHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          constraints: const BoxConstraints(maxWidth: 500),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                RCLocal.of(context).findYour.toUpperCase(),
                style: Theme.of(context).textTheme.headline1?.copyWith(
                  fontSize: 30,
                ),
              ),
              Text(
                RCLocal.of(context).regiment.toUpperCase(),
                style: Theme.of(context).textTheme.headline1?.copyWith(
                  fontSize: 70,
                ),
              ),
              const SizedBox(height: 30),
              Text(RCLocal.of(context).introDescription2),
              const SizedBox(height: 20),
              Text(RCLocal.of(context).introDescription2),
              const SizedBox(height: 20),
              Text(RCLocal.of(context).builtByCommunity),
            ],
          ),
        ),
        const Spacer(),
        Expanded(
          flex: 2,
          child: CustomBox(
            borderRadius: BorderRadius.circular(30),
            constraints: const BoxConstraints(maxWidth: 370, maxHeight: 370),
            padding: const EdgeInsets.all(20),
            child: const Placeholder(),
          ),
        ),
        const SizedBox(width: 40),
      ],
    );
  }
}
