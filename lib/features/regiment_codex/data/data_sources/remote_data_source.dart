part of regiment_codex;

abstract class CodexRemoteDataSource {
  Future<List<PhantomPreviewModel>> phantoms();

  Future<PhantomProfileModel?> phantomProfile(String name);
}

class CodexRemoteDataSourceImpl implements CodexRemoteDataSource {
  @override
  Future<List<PhantomPreviewModel>> phantoms() async {
    // TODO: implement phantoms
    throw UnimplementedError();
  }

  @override
  Future<PhantomProfileModel?> phantomProfile(String name) async {
    // TODO: implement phantomProfile
    throw UnimplementedError();
  }
}
