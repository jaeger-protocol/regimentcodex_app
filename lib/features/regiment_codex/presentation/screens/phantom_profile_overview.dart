part of regiment_codex;

class PhantomProfileOverview extends StatefulWidget {
  const PhantomProfileOverview({Key? key}) : super(key: key);

  static const String route = '/phantom-profile-overview';

  @override
  State<PhantomProfileOverview> createState() => _PhantomProfileOverviewState();
}

class _PhantomProfileOverviewState extends State<PhantomProfileOverview> {
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
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 1400,
          child: ListView(
            children: const [
              SizedBox(height: 50),
              PhantomPreviewHeader(),
              SizedBox(height: 50),
              PhantomOpenseaOverview(),
              PhantomPreviewFilerSection(),
              SizedBox(height: 800, child: GhostsPreviewGrid()),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
