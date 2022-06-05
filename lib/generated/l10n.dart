// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class RCLocal {
  RCLocal();

  static RCLocal? _current;

  static RCLocal get current {
    assert(_current != null,
        'No instance of RCLocal was loaded. Try to initialize the RCLocal delegate before accessing RCLocal.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<RCLocal> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = RCLocal();
      RCLocal._current = instance;

      return instance;
    });
  }

  static RCLocal of(BuildContext context) {
    final instance = RCLocal.maybeOf(context);
    assert(instance != null,
        'No instance of RCLocal present in the widget tree. Did you add RCLocal.delegate in localizationsDelegates?');
    return instance!;
  }

  static RCLocal? maybeOf(BuildContext context) {
    return Localizations.of<RCLocal>(context, RCLocal);
  }

  /// `Built by the community, for the community.`
  String get builtByCommunity {
    return Intl.message(
      'Built by the community, for the community.',
      name: 'builtByCommunity',
      desc: '',
      args: [],
    );
  }

  /// `Regiment Codex`
  String get regimentCodex {
    return Intl.message(
      'Regiment Codex',
      name: 'regimentCodex',
      desc: '',
      args: [],
    );
  }

  /// `Find your`
  String get findYour {
    return Intl.message(
      'Find your',
      name: 'findYour',
      desc: '',
      args: [],
    );
  }

  /// `Having trouble finding the right Regiment you want to join? The regiment codex was built to help you on that, and it’s not it’s only purpose, it has also been built for those who are hard-core PxN simps!`
  String get introDescription1 {
    return Intl.message(
      'Having trouble finding the right Regiment you want to join? The regiment codex was built to help you on that, and it’s not it’s only purpose, it has also been built for those who are hard-core PxN simps!',
      name: 'introDescription1',
      desc: '',
      args: [],
    );
  }

  /// `Find out more about the Phantoms leading each regiment, the perks, their personalities, the regiment performance and the ghost serving a purpose for them!`
  String get introDescription2 {
    return Intl.message(
      'Find out more about the Phantoms leading each regiment, the perks, their personalities, the regiment performance and the ghost serving a purpose for them!',
      name: 'introDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Floor`
  String get floor {
    return Intl.message(
      'Floor',
      name: 'floor',
      desc: '',
      args: [],
    );
  }

  /// `Ghosts`
  String get ghosts {
    return Intl.message(
      'Ghosts',
      name: 'ghosts',
      desc: '',
      args: [],
    );
  }

  /// `Ghost`
  String get ghost {
    return Intl.message(
      'Ghost',
      name: 'ghost',
      desc: '',
      args: [],
    );
  }

  /// `{quantity, plural, one {Item} other {Items}}`
  String item(num quantity) {
    return Intl.plural(
      quantity,
      one: 'Item',
      other: 'Items',
      name: 'item',
      desc: '',
      args: [quantity],
    );
  }

  /// `Items`
  String get items {
    return Intl.message(
      'Items',
      name: 'items',
      desc: '',
      args: [],
    );
  }

  /// `Owners`
  String get owner {
    return Intl.message(
      'Owners',
      name: 'owner',
      desc: '',
      args: [],
    );
  }

  /// `Number of Sales`
  String get numberOfSales {
    return Intl.message(
      'Number of Sales',
      name: 'numberOfSales',
      desc: '',
      args: [],
    );
  }

  /// `PxN`
  String get pxn {
    return Intl.message(
      'PxN',
      name: 'pxn',
      desc: '',
      args: [],
    );
  }

  /// `Regiment`
  String get regiment {
    return Intl.message(
      'Regiment',
      name: 'regiment',
      desc: '',
      args: [],
    );
  }

  /// `Volume Traded`
  String get volumeTraded {
    return Intl.message(
      'Volume Traded',
      name: 'volumeTraded',
      desc: '',
      args: [],
    );
  }

  /// `Highest Last Sale`
  String get highestLastSales {
    return Intl.message(
      'Highest Last Sale',
      name: 'highestLastSales',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<RCLocal> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<RCLocal> load(Locale locale) => RCLocal.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
