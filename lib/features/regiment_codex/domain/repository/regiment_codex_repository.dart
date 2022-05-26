part of regiment_codex;

abstract class RegimentCodexRepository {
  Future<Either<CodexException, List<PhantomPreviewModel>>> phantoms();

  Future<Either<CodexException, PhantomProfileModel?>> phantomProfile(
    String name,
  );
}
