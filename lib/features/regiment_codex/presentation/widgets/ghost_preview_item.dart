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
              image: ghost.image,
              onPressedOrClicked: () {
                provider.openPhantomProfile(context, null);
              },
              footerBuilder: (Color color) {
                return GhostPreviewFooter(
                  price: '12',
                  ghostName: ghost.name?.split(' ').last,
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
    required this.ghostName,
    required this.price,
    required this.color,
    super.key,
  });

  final String? ghostName;
  final String? price;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ItemInfoText('$ghostName', color: color),
        const Spacer(),
        Expanded(child: ItemInfoText('$price ETH', color: color)),
      ],
    );
  }
}
