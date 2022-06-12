part of nft_collection;

abstract class NFTCollectionRepository {
  Future<Either<CodexException, NFTCollectionModel?>> featuredCollection();
}
