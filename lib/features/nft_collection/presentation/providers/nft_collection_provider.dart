import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:regimentcodex/core/errors/exceptions.dart';
import 'package:regimentcodex/core/functions.dart';
import 'package:regimentcodex/core/helpers/reload_timer_helper.dart';
import 'package:regimentcodex/core/use_cases/use_case.dart';
import 'package:regimentcodex/features/nft_collection/data/models/nft_collection_model.dart';
import 'package:regimentcodex/features/nft_collection/nft_collection.dart';

class NFTCollectionProvider with ChangeNotifier {
  NFTCollectionProvider(this._getFeaturedCollection);

  final GetFeaturedCollection _getFeaturedCollection;

  NFTCollectionModel? _featuredCollection;

  NFTCollectionModel? get featuredCollection => _featuredCollection;

  bool _loading = true;

  bool get loading => _loading;

  set loading(bool status) {
    _loading = status;
    notifyListeners();
  }

  final _reloadTimerHelper = ReloadTimerHelper(
    duration: const Duration(seconds: 20),
    message: 'Reloading NFT Collections',
  );

  Future<void> initialize() async {
    _loading = true;
    _reloadTimerHelper.initPeriodReload(
      onReload: () async {
        await getFeaturedCollection();
        notifyListeners();
      },
    );
    _loading = false;
  }

  Future<void> getFeaturedCollection() async {
    return _getFeaturedCollection.call(const NoParams()).then(
      (Either<CodexException, NFTCollectionModel?> result) {
        throwExceptionIfLeft(result);
        _updateFeaturedCollection(result.getOrElse(() => null));
      },
    );
  }

  void _updateFeaturedCollection(NFTCollectionModel? newCollection) {
    if (newCollection == null) return;

    log('Updating featured collections');
    _featuredCollection = newCollection;
    notifyListeners();
  }

  Future<void> reload() async {
    _reloadTimerHelper.dispose();
    return initialize();
  }
}
