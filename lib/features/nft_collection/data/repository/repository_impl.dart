part of nft_collection;

class NFTCollectionRepositoryImpl implements NFTCollectionRepository {
  const NFTCollectionRepositoryImpl(
    this._netWorkInfoImpl,
    this._remoteDataSourceImpl,
  );

  final NetworkInfoImpl _netWorkInfoImpl;
  final NFTCollectionRemoteDataSourceImpl _remoteDataSourceImpl;

  @override
  Future<Either<CodexException, NFTCollectionModel?>>
      featuredCollection() async {
    if (await _netWorkInfoImpl.hasConnection) {
      try {
        return Right<CodexException, NFTCollectionModel?>(
          await _remoteDataSourceImpl.featuredCollection(),
        );
      } catch (_) {
        return const Left<CodexException, NFTCollectionModel?>(
          CodexException('Unable to load featured collection'),
        );
      }
    }
    return const Left<CodexException, NFTCollectionModel?>(
      CodexException('No internet Connection found'),
    );
  }
}
