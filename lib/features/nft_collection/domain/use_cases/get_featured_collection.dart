part of nft_collection;

class GetFeaturedCollection implements UseCase<NFTCollectionModel?, NoParams> {
  const GetFeaturedCollection(this._repository);

  final NFTCollectionRepository _repository;

  @override
  Future<Either<CodexException, NFTCollectionModel?>> call(_) async {
    return _repository.featuredCollection();
  }
}
