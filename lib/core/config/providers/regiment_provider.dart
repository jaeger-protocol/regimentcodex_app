import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:regimentcodex/core/network/network_info.dart';
import 'package:regimentcodex/features/nft_collection/nft_collection.dart';
import 'package:regimentcodex/features/nft_collection/presentation/providers/nft_collection_provider.dart';
import 'package:regimentcodex/features/regiment_codex/presentation/providers/regiment_codex_provider.dart';
import 'package:regimentcodex/features/regiment_codex/regiment_codex.dart';

final _regimentCodexRepositoryImpl = RegimentCodexRepositoryImpl(
  NetworkInfoImpl.instance,
  CodexLocalDataSourceImpl(),
  CodexRemoteDataSourceImpl(),
);

final _nftCollectionRepositoryImpl = NFTCollectionRepositoryImpl(
  NetworkInfoImpl.instance,
  NFTCollectionRemoteDataSourceImpl(),
);

List<SingleChildWidget> get regimentCodexProviders {
  return <SingleChildWidget>[
    /// ============== PROVIDER DI ================
    ListenableProvider<RegimentCodexProvider>(
      create: (_) {
        return RegimentCodexProvider(
          GetPhantoms(_regimentCodexRepositoryImpl),
          GetGhosts(_regimentCodexRepositoryImpl),
        );
      },
    ),
    ListenableProvider<NFTCollectionProvider>(
      create: (_) {
        return NFTCollectionProvider(
          GetFeaturedCollection(_nftCollectionRepositoryImpl),
        );
      },
    ),
  ];
}
