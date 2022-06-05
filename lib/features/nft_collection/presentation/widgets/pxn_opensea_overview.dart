part of nft_collection;

class PXNOpenseaOverview extends StatelessWidget {
  const PXNOpenseaOverview({Key? key}) : super(key: key);

  static List<ProjectStatsItem> projectStats(NFTCollectionModel? project) {
    return [
      ProjectStatsItem(label: 'Items', stat: project?.count),
      ProjectStatsItem(label: 'Owners', stat: project?.owners),
      ProjectStatsItem(
        label: 'Floor',
        stat: project?.floorPrice,
        isCurrency: true,
        currency: project?.baseCurrency,
      ),
      ProjectStatsItem(
        label: 'Volume Traded',
        stat: project?.volumeTraded,
      ),
      ProjectStatsItem(
        label: 'Number Of Sales',
        stat: project?.numberOfSales,
      ),
      ProjectStatsItem(
        label: 'Highest Last Sale',
        stat: null,
        isCurrency: true,
        currency: project?.baseCurrency,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return CustomBox(
      constraints: const BoxConstraints(
        maxHeight: 120,
        maxWidth: double.infinity,
      ),
      child: Consumer<NFTCollectionProvider>(
          builder: (context, NFTCollectionProvider provider, _) {
            final project = provider.featuredCollection;
            return LayoutBuilder(builder: (context, BoxConstraints constraints) {
              if (constraints.maxWidth < 860) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: projectStats(project),
                  ),
                );
              }
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: projectStats(project),
              );
            });
          }),
    );
  }
}
