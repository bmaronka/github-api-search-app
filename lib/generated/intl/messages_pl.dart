// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl locale. All the
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
  String get localeName => 'pl';

  static String m0(number) => "#${number}";

  static String m1(name) => "Autor repo: ${name}";

  static String m2(description) => "Opis repo: ${description}";

  static String m3(name) => "Nazwa repo: ${name}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appTitle":
            MessageLookupByLibrary.simpleMessage("Znandź repozytorium Github"),
        "closed": MessageLookupByLibrary.simpleMessage("Zamknij"),
        "emptyIssuesMessage": MessageLookupByLibrary.simpleMessage(
            "Niestety nie ma tu żadnych problemów"),
        "emptyRepositoriesMessage": MessageLookupByLibrary.simpleMessage(
            "Niestety nie ma tu żadnych repozytoriów. Spróbuj inną frazę"),
        "hint":
            MessageLookupByLibrary.simpleMessage("Wpisz nazwę repozytoirum "),
        "issueNumber": m0,
        "issues": MessageLookupByLibrary.simpleMessage("Problemy"),
        "offlineErrorTitle":
            MessageLookupByLibrary.simpleMessage("Ups! Jesteś offline"),
        "open": MessageLookupByLibrary.simpleMessage("Otwórz"),
        "reload": MessageLookupByLibrary.simpleMessage("Odśwież"),
        "repositoryAuthor": m1,
        "repositoryDescription": m2,
        "repositoryDetailsScreenTitle":
            MessageLookupByLibrary.simpleMessage("Szczegóły repozytoirum"),
        "repositoryName": m3,
        "seeMore": MessageLookupByLibrary.simpleMessage("Zobacz więcej…"),
        "unspecifiedErrorTitle":
            MessageLookupByLibrary.simpleMessage("Ups! Mamy problem"),
        "webviewScreenTitle": MessageLookupByLibrary.simpleMessage("Github")
      };
}
