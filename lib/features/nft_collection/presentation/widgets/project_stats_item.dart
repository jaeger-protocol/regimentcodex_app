part of nft_collection;

class ProjectStatsItem extends StatelessWidget {
  const ProjectStatsItem({
    required this.label,
    required this.stat,
    this.isCurrency = false,
    this.currency,
    super.key,
  });

  final String label;
  final num? stat;
  final bool isCurrency;
  final String? currency;

  String get adaptiveStat {
    if (stat == null) return '-';
    if (isCurrency) return '$stat$currency';
    try {
      if (stat! > 999) {
        return NumberFormat.compactCurrency(
          name: '',
          decimalDigits: 1,
        ).format(stat).trim();
      } else {
        return NumberFormat.currency(
          name: '',
          decimalDigits: 1,
        ).format(stat).trim();
      }
    } catch (e) {
      return NumberFormat.currency(
        name: '',
        decimalDigits: 1,
      ).format('0').trim();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            adaptiveStat,
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(height: 8.0),
          Text(label),
        ],
      ),
    );
  }
}
