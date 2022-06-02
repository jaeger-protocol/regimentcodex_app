part of regiment_codex;

class RegimentCodexOverview extends StatefulWidget {
  const RegimentCodexOverview({Key? key}) : super(key: key);

  @override
  State<RegimentCodexOverview> createState() => _RegimentCodexOverviewState();
}

class _RegimentCodexOverviewState extends State<RegimentCodexOverview> {
  Future<void> _loadPhantoms() {
    return context.read<RegimentCodexProvider>().getPhantoms();
  }

  void _loadNFTCollection() {
    context.read<NFTCollectionProvider>().getFeaturedCollection();
  }

  @override
  void initState() {
    _loadPhantoms();
    _loadNFTCollection();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 1400,
        child: ListView(
          children: const [
            SizedBox(height: 50),
            PhantomPreviewHeader(),
            SizedBox(height: 50),
            PhantomOpenseaOverview(),
            PhantomPreviewFilerSection(),
            SizedBox(height: 800, child: PhantomsPreviewGrid()),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
