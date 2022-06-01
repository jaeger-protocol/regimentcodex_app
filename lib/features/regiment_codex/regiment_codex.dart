library regiment_codex;

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:regimentcodex/core/errors/exceptions.dart';
import 'package:regimentcodex/core/mock_data/mock_data.dart';
import 'package:regimentcodex/core/network/network_info.dart';
import 'package:regimentcodex/core/use_cases/use_case.dart';
import 'package:regimentcodex/features/regiment_codex/data/models/ghost_profile_model.dart';
import 'package:regimentcodex/features/regiment_codex/data/models/phantom_profile_model.dart';

part 'data/data_sources/remote_data_source.dart';
part 'data/data_sources/local_data_source.dart';
part 'data/data_sources/codex_data_source.dart';
part 'data/repositories/repository_impl.dart';
part 'domain/repository/regiment_codex_repository.dart';
part 'domain/use_cases/get_ghosts.dart';
part 'domain/use_cases/get_phantoms.dart';
part 'presentation/screens/regiment_codex_overview.dart';
part 'presentation/widgets/phantom_filter_section.dart';
part 'presentation/widgets/phantom_header_section.dart';
part 'presentation/widgets/phantom_preview_item.dart';
