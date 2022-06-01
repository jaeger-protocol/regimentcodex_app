part of regiment_codex;

class CodexLocalDataSourceImpl implements CodexDataSource {
  @override
  Future<List<PhantomProfileModel>> phantoms() async {
    return MockData.phantoms;
  }

  @override
  Future<List<GhostProfileModel>> ghosts() async {
    return MockData.ghosts;
  }
}
