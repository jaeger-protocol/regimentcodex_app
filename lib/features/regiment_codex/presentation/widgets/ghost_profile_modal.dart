part of regiment_codex;

class GhostProfile extends StatefulWidget {
  const GhostProfile({Key? key}) : super(key: key);

  @override
  State<GhostProfile> createState() => _GhostProfileState();
}

class _GhostProfileState extends State<GhostProfile> {
  final PageController pageController = PageController(
    viewportFraction: 0.8,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Navigator.of(context).pop,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Consumer<RegimentCodexProvider>(
            builder: (context, RegimentCodexProvider provider, _) {
          return BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 4,
              sigmaY: 4,
              tileMode: TileMode.mirror,
            ),
            child: GestureDetector(
              onTap: () {},
              child: Center(
                child: Container(
                  constraints:
                      const BoxConstraints(minHeight: 200, maxHeight: 480),
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: provider.ghosts.length,
                    itemBuilder: (context, index) {
                      final ghost = provider.ghosts[index];
                      final bool showImage =
                          ghost.image != null && ghost.image!.isNotEmpty;
                      return CustomBox(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        padding: const EdgeInsets.all(40),
                        color: Theme.of(context).colorScheme.primary,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            showImage
                                ? Image.network(ghost.image!)
                                : Image.asset(Assets.phantomPlaceholder.path),
                            GhostProfileTraitSection(ghost: ghost)
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

class GhostProfileTraitSection extends StatelessWidget {
  const GhostProfileTraitSection({
    Key? key,
    required this.ghost,
  }) : super(key: key);

  final GhostProfileModel ghost;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          ghost.name?.split(' ').last ?? '',
          style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 42),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Text('0x84574398r3483904i495903i3'),
        ),
        CustomBox(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: ghost.attributes!.map((element) {
              return Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  '${element.traitType} - ${element.value}',
                  textAlign: TextAlign.start,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
