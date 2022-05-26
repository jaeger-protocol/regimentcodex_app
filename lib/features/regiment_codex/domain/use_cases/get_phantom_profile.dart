part of regiment_codex;

class GetPhantomProfile
    implements UseCase<PhantomProfileModel?, PhantomParam> {
  const GetPhantomProfile(this._repository);

  final RegimentCodexRepository _repository;

  @override
  Future<Either<CodexException, PhantomProfileModel?>> call(
    PhantomParam params,
  ) async {
    return _repository.phantomProfile(params.name!);
  }
}
