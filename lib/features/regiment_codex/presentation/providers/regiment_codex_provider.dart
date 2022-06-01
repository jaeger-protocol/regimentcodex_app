import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:regimentcodex/core/errors/exceptions.dart';
import 'package:regimentcodex/core/functions.dart';
import 'package:regimentcodex/core/use_cases/use_case.dart';
import 'package:regimentcodex/features/regiment_codex/data/models/ghost_profile_model.dart';
import 'package:regimentcodex/features/regiment_codex/data/models/phantom_profile_model.dart';
import 'package:regimentcodex/features/regiment_codex/regiment_codex.dart';

class RegimentCodexProvider with ChangeNotifier {
  RegimentCodexProvider(
    this._getPhantoms,
    this._getGhosts,
  );

  final GetPhantoms _getPhantoms;
  final GetGhosts _getGhosts;

  List<PhantomProfileModel> _phantoms = [];
  List<GhostProfileModel> _ghosts = [];

  List<PhantomProfileModel> get phantoms => _phantoms;

  List<GhostProfileModel> get ghosts => _ghosts;

  Future<void> getPhantoms() async {
    return _getPhantoms.call(const PhantomParam()).then(
      (Either<CodexException, List<PhantomProfileModel>> result) {
        throwExceptionIfLeft(result);
        _phantoms = result.getOrElse(() => []);
        notifyListeners();
        return;
      },
    );
  }

  Future<void> getGhosts() async {
    return _getGhosts.call(const PhantomParam()).then(
      (Either<CodexException, List<GhostProfileModel>> result) {
        throwExceptionIfLeft(result);
        _ghosts = result.getOrElse(() => []);
        notifyListeners();
        return;
      },
    );
  }
}
