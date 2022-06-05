// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(quantity) =>
      "${Intl.plural(quantity, one: 'Item', other: 'Items')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "builtByCommunity": MessageLookupByLibrary.simpleMessage(
            "Built by the community, for the community."),
        "findYour": MessageLookupByLibrary.simpleMessage("Find your"),
        "floor": MessageLookupByLibrary.simpleMessage("Floor"),
        "ghost": MessageLookupByLibrary.simpleMessage("Ghost"),
        "ghosts": MessageLookupByLibrary.simpleMessage("Ghosts"),
        "highestLastSales":
            MessageLookupByLibrary.simpleMessage("Highest Last Sale"),
        "introDescription1": MessageLookupByLibrary.simpleMessage(
            "Having trouble finding the right Regiment you want to join? The regiment codex was built to help you on that, and it’s not it’s only purpose, it has also been built for those who are hard-core PxN simps!"),
        "introDescription2": MessageLookupByLibrary.simpleMessage(
            "Find out more about the Phantoms leading each regiment, the perks, their personalities, the regiment performance and the ghost serving a purpose for them!"),
        "item": m0,
        "items": MessageLookupByLibrary.simpleMessage("Items"),
        "numberOfSales":
            MessageLookupByLibrary.simpleMessage("Number of Sales"),
        "owner": MessageLookupByLibrary.simpleMessage("Owners"),
        "pxn": MessageLookupByLibrary.simpleMessage("PxN"),
        "regiment": MessageLookupByLibrary.simpleMessage("Regiment"),
        "regimentCodex": MessageLookupByLibrary.simpleMessage("Regiment Codex"),
        "volumeTraded": MessageLookupByLibrary.simpleMessage("Volume Traded")
      };
}
