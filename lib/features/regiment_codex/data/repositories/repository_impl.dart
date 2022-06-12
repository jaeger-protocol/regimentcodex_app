part of regiment_codex;

class RegimentCodexRepositoryImpl implements RegimentCodexRepository {
  const RegimentCodexRepositoryImpl(
    this._netWorkInfoImpl,
    this._localDataSourceImpl,
    this._remoteDataSourceImpl,
  );

  final NetworkInfoImpl _netWorkInfoImpl;
  final CodexLocalDataSourceImpl _localDataSourceImpl;
  final CodexRemoteDataSourceImpl _remoteDataSourceImpl;

  @override
  Future<Either<CodexException, List<PhantomProfileModel>>> phantoms() async {
    if (MockData.useMocks) {
      return Right<CodexException, List<PhantomProfileModel>>(
        await _localDataSourceImpl.phantoms(),
      );
    }
    if (await _netWorkInfoImpl.hasConnection) {
      try {
        return Right<CodexException, List<PhantomProfileModel>>(
          await _remoteDataSourceImpl.phantoms(),
        );
      } catch (_) {
        return const Left<CodexException, List<PhantomProfileModel>>(
          CodexException('Unable to add new regiment_codex'),
        );
      }
    }

    return const Left<CodexException, List<PhantomProfileModel>>(
      CodexException('No internet Connection found'),
    );
  }

  @override
  Future<Either<CodexException, List<GhostProfileModel>>> ghosts() async {
    if (MockData.useMocks) {
      return Right<CodexException, List<GhostProfileModel>>(
        await _localDataSourceImpl.ghosts(),
      );
    }
    try {
      if (await _netWorkInfoImpl.hasConnection) {
        return Right<CodexException, List<GhostProfileModel>>(
          await _remoteDataSourceImpl.ghosts(),
        );
      }
    } catch (_) {
      return const Left<CodexException, List<GhostProfileModel>>(
        CodexException('Could not get ghosts '),
      );
    }
    return const Left<CodexException, List<GhostProfileModel>>(
      CodexException('no internet connection'),
    );
  }
}

// TODO(Júlio): create a generic method to hold network checks
// Future<Either<CodexException, T?>> onExecute<T>(
//   Future<K>? Function() callBack,
// ) async {
//   try {
//     final result = await callBack();
//     return result;
//   } catch (_) {
//     return const Left(
//       CodexException('no internet connection'),
//     );
//   }
// }