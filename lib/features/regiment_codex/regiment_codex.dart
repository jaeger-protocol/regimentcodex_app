library regiment_codex;

import 'dart:ui';

import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regimentcodex/core/errors/exceptions.dart';
import 'package:regimentcodex/core/mock_data/mock_data.dart';
import 'package:regimentcodex/core/network/network_info.dart';
import 'package:regimentcodex/core/presentation/widgets/codex_header.dart';
import 'package:regimentcodex/core/presentation/widgets/custom_box.dart';
import 'package:regimentcodex/core/presentation/widgets/item_info_text.dart';
import 'package:regimentcodex/core/presentation/widgets/item_preview.dart';
import 'package:regimentcodex/core/use_cases/use_case.dart';
import 'package:regimentcodex/features/nft_collection/nft_collection.dart';
import 'package:regimentcodex/features/nft_collection/presentation/providers/nft_collection_provider.dart';
import 'package:regimentcodex/features/regiment_codex/data/models/ghost_profile_model.dart';
import 'package:regimentcodex/features/regiment_codex/data/models/phantom_profile_model.dart';
import 'package:regimentcodex/features/regiment_codex/presentation/providers/regiment_codex_provider.dart';
import 'package:regimentcodex/gen/assets.gen.dart';

part 'data/data_sources/codex_data_source.dart';
part 'data/data_sources/local_data_source.dart';
part 'data/data_sources/remote_data_source.dart';
part 'data/repositories/repository_impl.dart';
part 'domain/repository/regiment_codex_repository.dart';
part 'domain/use_cases/get_ghosts.dart';
part 'domain/use_cases/get_phantoms.dart';
part 'presentation/screens/regiment_codex_overview.dart';
part 'presentation/screens/phantom_profile_overview.dart';
part 'presentation/widgets/phantom_filter_section.dart';
part 'presentation/widgets/phantom_header_section.dart';
part 'presentation/widgets/phantom_preview_item.dart';
part 'presentation/widgets/ghost_preview_item.dart';
part 'presentation/widgets/ghost_profile_modal.dart';
