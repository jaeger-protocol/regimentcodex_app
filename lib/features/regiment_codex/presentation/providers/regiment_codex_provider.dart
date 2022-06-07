import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:regimentcodex/core/errors/exceptions.dart';
import 'package:regimentcodex/core/functions.dart';
import 'package:regimentcodex/core/presentation/widgets/modal.dart';
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

  List<PhantomProfileModel> _filteredPhantoms = [];
  List<PhantomProfileModel> _phantoms = [];
  List<GhostProfileModel> _ghosts = [];

  List<PhantomProfileModel> get phantoms => _filteredPhantoms;

  List<GhostProfileModel> get ghosts => _ghosts;

  Future<void> getPhantoms() async {
    return _getPhantoms.call(const PhantomParam()).then(
      (Either<CodexException, List<PhantomProfileModel>> result) {
        throwExceptionIfLeft(result);
        _phantoms = result.getOrElse(() => []);
        _filteredPhantoms = _phantoms;
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

  void searchPhantom(String searchQuery) {
    if (searchQuery.isEmpty) return _resetSearch();

    _filteredPhantoms = _phantoms.where((element) {
      final String phantomName = (element.name ?? '').toLowerCase();
      return phantomName.startsWith(searchQuery.toLowerCase());
    }).toList();
    notifyListeners();
  }

  void _resetSearch() {
    _filteredPhantoms = _phantoms;
    notifyListeners();
  }

  Future<dynamic> openPhantomProfile(BuildContext context, int? id) async {
    if (id == null) return null;
    return Navigator.of(context).pushNamed(PhantomProfileOverview.route);
  }

  Future<dynamic> openGhostProfile(BuildContext context) async {
    showCodexModal(
      context: context,
      builder: (_) {
        return const GhostProfile();
      },
    );
  }
}
