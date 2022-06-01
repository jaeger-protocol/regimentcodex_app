part of regiment_codex;

class GetGhosts implements UseCase<List<GhostProfileModel>, PhantomParam> {
  const GetGhosts(this._repository);

  final RegimentCodexRepository _repository;

  @override
  Future<Either<CodexException, List<GhostProfileModel>>> call(_) async {
    return _repository.ghosts();
  }
}
