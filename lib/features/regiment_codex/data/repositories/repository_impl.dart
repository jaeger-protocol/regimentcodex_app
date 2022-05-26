part of regiment_codex;

class RegimentCodexRepositoryImpl implements RegimentCodexRepository {
  const RegimentCodexRepositoryImpl(
    this._netWorkInfoImpl,
    this._remoteDataSourceImpl,
  );

  final NetWorkInfoImpl _netWorkInfoImpl;
  final CodexRemoteDataSourceImpl _remoteDataSourceImpl;

  @override
  Future<Either<CodexException, List<PhantomPreviewModel>>> phantoms() async {
    if (await _netWorkInfoImpl.hasConnection) {
      try {
        return Right<CodexException, List<PhantomPreviewModel>>(
          await _remoteDataSourceImpl.phantoms(),
        );
      } catch (_) {
        return const Left<CodexException, List<PhantomPreviewModel>>(
          CodexException('Unable to add new regiment_codex'),
        );
      }
    }
    return const Left<CodexException, List<PhantomPreviewModel>>(
      CodexException('No internet Connection found'),
    );
  }

  @override
  Future<Either<CodexException, PhantomProfileModel?>> phantomProfile(
    String name,
  ) async {
    try {
      if (await _netWorkInfoImpl.hasConnection) {
        return Right<CodexException, PhantomProfileModel?>(
          await _remoteDataSourceImpl.phantomProfile(name),
        );
      }
    } catch (_) {
      return Left<CodexException, PhantomProfileModel?>(
        CodexException('Could not find phantom with name: $name'),
      );
    }
    return const Left<CodexException, PhantomProfileModel?>(
      CodexException('no internet connection'),
    );
  }
}
