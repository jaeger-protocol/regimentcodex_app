part of regiment_codex;

class GhostsPreviewGrid extends StatelessWidget {
  const GhostsPreviewGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RegimentCodexProvider>(
      builder: (context, RegimentCodexProvider provider, _) {
        return GridView.builder(
          itemCount: provider.ghosts.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 320,
            childAspectRatio: 240 / 300,
          ),
          itemBuilder: (context, index) {
            final ghost = provider.ghosts[index];
            return ItemPreview(
              key: Key('Ghost <${ghost.id}> - <${ghost.name}>'),
              // sigil: ,
              onPressedOrClicked: () {
                provider.openPhantomProfile(context, null);
              },
              footerBuilder: (Color color) {
                return GhostPreviewFooter(
                  price: 'ghost.price',
                  ghostId: ghost.id,
                  color: color,
                );
              },
            );
          },
        );
      },
    );
  }
}

class GhostPreviewFooter extends StatelessWidget {
  const GhostPreviewFooter({
    required this.ghostId,
    required this.price,
    required this.color,
    super.key,
  });

  final String? ghostId;
  final String? price;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(child: ItemInfoText('$ghostId', color: color)),
        Expanded(child: ItemInfoText('$price', color: color)),
      ],
    );
  }
}
