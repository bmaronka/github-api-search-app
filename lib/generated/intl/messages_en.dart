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

  static String m0(number) => "#${number}";

  static String m1(name) => "Reoo author: ${name}";

  static String m2(description) => "Repo description: ${description}";

  static String m3(name) => "Repo name: ${name}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "all": MessageLookupByLibrary.simpleMessage("All"),
        "appTitle":
            MessageLookupByLibrary.simpleMessage("Find Github Repository"),
        "closed": MessageLookupByLibrary.simpleMessage("Closed"),
        "emptyIssuesMessage": MessageLookupByLibrary.simpleMessage(
            "Unfortunately, there are no issues"),
        "emptyRepositoriesMessage": MessageLookupByLibrary.simpleMessage(
            "Unfortunately, there are no repositories. Please, try different phrase"),
        "hint": MessageLookupByLibrary.simpleMessage("Type repository name"),
        "issueNumber": m0,
        "issues": MessageLookupByLibrary.simpleMessage("Issues"),
        "noMoreIssues": MessageLookupByLibrary.simpleMessage("No more issues"),
        "noMoreRepositories":
            MessageLookupByLibrary.simpleMessage("No more repositories"),
        "offlineErrorTitle":
            MessageLookupByLibrary.simpleMessage("Oops! You\'re offline"),
        "open": MessageLookupByLibrary.simpleMessage("Open"),
        "reload": MessageLookupByLibrary.simpleMessage("Refresh"),
        "repositoryAuthor": m1,
        "repositoryDescription": m2,
        "repositoryDetailsScreenTitle":
            MessageLookupByLibrary.simpleMessage("Repository details"),
        "repositoryName": m3,
        "seeMore": MessageLookupByLibrary.simpleMessage("See more…"),
        "unspecifiedErrorTitle":
            MessageLookupByLibrary.simpleMessage("Oops! We have a problem"),
        "webviewScreenTitle": MessageLookupByLibrary.simpleMessage("Github")
      };
}
