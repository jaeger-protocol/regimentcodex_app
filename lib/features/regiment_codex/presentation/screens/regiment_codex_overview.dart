part of regiment_codex;

class RegimentCodexOverview extends StatefulWidget {
  const RegimentCodexOverview({Key? key}) : super(key: key);

  static const String route = 'regiment-codex-overview';

  @override
  State<RegimentCodexOverview> createState() => _RegimentCodexOverviewState();
}

class _RegimentCodexOverviewState extends State<RegimentCodexOverview> {
  Future<void> _loadPhantoms() async {
      context.read<RegimentCodexProvider>().getPhantoms();
      context.read<RegimentCodexProvider>().getGhosts();
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
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 1400,
          child: ListView(
            children: const [
              CodesHeader(),
              PXNPreviewHeader(),
              SizedBox(height: 50),
              PXNOpenseaOverview(),
              PhantomPreviewFilerSection(),
              SizedBox(height: 800, child: PhantomsPreviewGrid()),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
