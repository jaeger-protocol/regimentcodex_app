part of regiment_codex;

class GetPhantoms implements UseCase<List<PhantomProfileModel>, PhantomParam> {
  const GetPhantoms(this._repository);

  final RegimentCodexRepository _repository;

  @override
  Future<Either<CodexException, List<PhantomProfileModel>>> call(_) async {
    return _repository.phantoms();
  }
}
