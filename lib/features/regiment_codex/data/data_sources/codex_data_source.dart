part of regiment_codex;

abstract class CodexDataSource {
  Future<List<PhantomProfileModel>> phantoms();

  Future<List<GhostProfileModel>> ghosts();
}
