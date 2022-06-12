part of regiment_codex;

class PhantomPreviewHeader extends StatelessWidget {
  const PhantomPreviewHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final phantom = context.read<RegimentCodexProvider>().demoPhantom;

    return Column(
      children: [
        SizedBox(
          height: 400,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  children: [
                    const Expanded(
                      child: Placeholder(
                        fallbackHeight: 200,
                        fallbackWidth: 150,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      '${phantom.phantomId}',
                      style: Theme.of(context).textTheme.headline1?.copyWith(
                            fontSize: 90,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                flex: 3,
                child: Image.asset(
                  phantom.image ?? Assets.phantomPlaceholder.path,
                ),
              ),
              const SizedBox(width: 20),
              const PhantomPreviewHeaderRight(),
            ],
          ),
        ),
      ],
    );
  }
}

class PhantomPreviewHeaderRight extends StatelessWidget {
  const PhantomPreviewHeaderRight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final phantom = context.read<RegimentCodexProvider>().demoPhantom;
    return Expanded(
      flex: 2,
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 425,
          maxHeight: 410,
        ),
        child: SizedBox(
          height: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${phantom.name}',
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(height: 10),
              Text(
                RCLocal.of(context).whoIs('${phantom.name}'),
                style: Theme.of(context).textTheme.headline3,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${phantom.phantomStory}',
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontSize: 14,
                        color: Theme.of(context).textTheme.caption?.color,
                      ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    PhantomCheckedBoxList(
                      title: RCLocal.of(context).regPerks,
                      items: phantom.regiment?.regimentPerks,
                    ),
                    const SizedBox(width: 12),
                    PhantomCheckedBoxList(
                      title: RCLocal.of(context).personality,
                      items: phantom.personalityTraits,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PhantomCheckedBoxList extends StatelessWidget {
  const PhantomCheckedBoxList({
    Key? key,
    required this.title,
    this.items,
  }) : super(key: key);

  final String title;
  final List<String>? items;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomBox(
        width: 206,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              child: Text(
                RCLocal.of(context).regPerks,
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            const SizedBox(height: 10),
            for (String item in items ?? [])
              Expanded(
                child: Row(
                  children: [
                    const Checkbox(value: true, onChanged: null),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Text(
                          item,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
