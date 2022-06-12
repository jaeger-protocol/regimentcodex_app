part of nft_collection;

abstract class NFTDataSource {
  Future<NFTCollectionModel?> featuredCollection();
}

class NFTCollectionRemoteDataSourceImpl implements NFTDataSource {
  static const int _retryThreshHold = 3;
  int _retryCount = 0;

  @override
  Future<NFTCollectionModel?> featuredCollection() async {
    _retryCount = 0;
    return _getCollection(NFTProject.featuredCollectionSlug);
  }

  Future<NFTCollectionModel?> _getCollection(String slug) async {
    try {
      final httpResponse = await HTTPHelper.getRequest(
        Secrets.openseaCollectionStats(slug),
      );
      final decodedResponse = HTTPHelper.decodeResponse(httpResponse);
      final collectionMap = decodedResponse['stats'] as Map<String, dynamic>;
      return NFTCollectionModel.fromJson(collectionMap).copyWith(
        slug: slug,
        collectionLink: '${Links.opensea}/collection/$slug',
        baseCurrency: 'ETH',
      );
    } catch (error) {
      if (_retryCount > _retryThreshHold) {
        _logTopLevelError('Aborting request on featuredCollection()', error);
        return null;
      }
      _retryCount++;
      log('retryCount: $_retryCount');
      log('$error');
      return featuredCollection();
    }
  }

  void _logTopLevelError(String message, Object error) {
    log(
      'Retry threshold reached, $message',
      error: error,
      time: DateTime.now(),
      level: 2000,
    );
  }
}
