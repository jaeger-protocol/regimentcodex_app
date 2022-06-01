part of regiment_codex;

abstract class RegimentCodexRepository {
  Future<Either<CodexException, List<PhantomProfileModel>>> phantoms();

  Future<Either<CodexException, List<GhostProfileModel>>> ghosts();
}
