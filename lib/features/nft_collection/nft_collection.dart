library nft_collection;

import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:regimentcodex/core/config/links.dart';
import 'package:regimentcodex/core/config/nft_project.dart';
import 'package:regimentcodex/core/config/secrets.dart';
import 'package:regimentcodex/core/errors/exceptions.dart';
import 'package:regimentcodex/core/helpers/http_helper.dart';
import 'package:regimentcodex/core/network/network_info.dart';
import 'package:regimentcodex/core/presentation/widgets/custom_box.dart';
import 'package:regimentcodex/core/use_cases/use_case.dart';
import 'package:regimentcodex/features/nft_collection/data/models/nft_collection_model.dart';
import 'package:regimentcodex/features/nft_collection/presentation/providers/nft_collection_provider.dart';

part 'domain/use_cases/get_featured_collection.dart';
part 'domain/repository/nft_collection_repository.dart';
part 'data/data_source/remote_data_source.dart';
part 'data/repository/repository_impl.dart';
part 'presentation/widgets/phantom_opensea_overview.dart';
part 'presentation/widgets/pxn_opensea_overview.dart';
part 'presentation/widgets/pxn_header_section.dart';
part 'presentation/widgets/project_stats_item.dart';