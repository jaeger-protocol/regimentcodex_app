part of regiment_codex;

class PhantomsPreviewGrid extends StatelessWidget {
  const PhantomsPreviewGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RegimentCodexProvider>(
      builder: (context, RegimentCodexProvider provider, _) {
        return GridView.builder(
          itemCount: provider.phantoms.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 320,
            childAspectRatio: 240 / 300,
          ),
          itemBuilder: (context, index) {
            final phantom = provider.phantoms[index];
            return ItemPreview(
              key: Key('Phantom <${phantom.id}> - <${phantom.name}>'),
              itemId: phantom.id,
              onPressedOrClicked: () {
                 provider.openPhantomProfile(context, phantom.id);
              },
              footerBuilder: (Color color) {
                return PhantomPreviewFooter(name: phantom.name, color: color);
              },
            );
          },
        );
      },
    );
  }
}

class PhantomPreviewFooter extends StatelessWidget {
  const PhantomPreviewFooter({
    required this.name,
    required this.color,
    super.key,
  });

  final String? name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Placeholder(
          fallbackWidth: 40,
          fallbackHeight: 40,
        ),
        CustomBox(
          height: 30,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          width: 4,
          color: color,
        ),
        Expanded(child: ItemInfoText('$name', color: color)),
      ],
    );
  }
}
