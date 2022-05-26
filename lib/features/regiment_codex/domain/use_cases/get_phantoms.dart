part of regiment_codex;

class GetPhantoms implements UseCase<List<PhantomPreviewModel>, PhantomParam> {
  const GetPhantoms(this._repository);

  final RegimentCodexRepository _repository;

  @override
  Future<Either<CodexException, List<PhantomPreviewModel>>> call(_) async {
    return _repository.phantoms();
  }
}
