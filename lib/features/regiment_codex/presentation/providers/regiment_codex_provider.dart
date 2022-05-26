import 'package:dartz/dartz.dart';
import 'package:regimentcodex/core/errors/exceptions.dart';
import 'package:regimentcodex/core/errors/exceptions.dart';
import 'package:regimentcodex/core/functions.dart';
import 'package:regimentcodex/core/use_cases/use_case.dart';
import 'package:regimentcodex/features/regiment_codex/data/models/phantom_preview_model.dart';
import 'package:regimentcodex/features/regiment_codex/data/models/phantom_profile_model.dart';
import 'package:regimentcodex/features/regiment_codex/regiment_codex.dart';

class RegimentCodexProvider {
  const RegimentCodexProvider(
    this._getPhantoms,
    this._getPhantomProfile,
  );

  final GetPhantoms _getPhantoms;
  final GetPhantomProfile _getPhantomProfile;

  Future<void> getPhantoms() async {
    return _getPhantoms.call(const PhantomParam()).then(
      (Either<CodexException, List<PhantomPreviewModel>> result) {
        throwExceptionIfLeft(result);
        return;
      },
    );
  }

  Future<void> getPhantomProfile(String? name) async {
    return _getPhantomProfile.call(PhantomParam(name: name)).then(
      (Either<CodexException, PhantomProfileModel?> result) {
        throwExceptionIfLeft(result);
        return;
      },
    );
  }
}
