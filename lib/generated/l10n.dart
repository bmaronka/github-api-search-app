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

class Strings {
  Strings();

  static Strings? _current;

  static Strings get current {
    assert(_current != null,
        'No instance of Strings was loaded. Try to initialize the Strings delegate before accessing Strings.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Strings> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Strings();
      Strings._current = instance;

      return instance;
    });
  }

  static Strings of(BuildContext context) {
    final instance = Strings.maybeOf(context);
    assert(instance != null,
        'No instance of Strings present in the widget tree. Did you add Strings.delegate in localizationsDelegates?');
    return instance!;
  }

  static Strings? maybeOf(BuildContext context) {
    return Localizations.of<Strings>(context, Strings);
  }

  /// `Find your Github Repository`
  String get appTitle {
    return Intl.message(
      'Find your Github Repository',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Oops! You're offline`
  String get offlineErrorTitle {
    return Intl.message(
      'Oops! You\'re offline',
      name: 'offlineErrorTitle',
      desc: '',
      args: [],
    );
  }

  /// `Oops! We have a problem`
  String get unspecifiedErrorTitle {
    return Intl.message(
      'Oops! We have a problem',
      name: 'unspecifiedErrorTitle',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get reload {
    return Intl.message(
      'Refresh',
      name: 'reload',
      desc: '',
      args: [],
    );
  }

  /// `Type repository name`
  String get hint {
    return Intl.message(
      'Type repository name',
      name: 'hint',
      desc: '',
      args: [],
    );
  }

  /// `Repository details`
  String get repositoryDetailsScreenTitle {
    return Intl.message(
      'Repository details',
      name: 'repositoryDetailsScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Repo name: {name}`
  String repositoryName(Object name) {
    return Intl.message(
      'Repo name: $name',
      name: 'repositoryName',
      desc: '',
      args: [name],
    );
  }

  /// `Reoo author: {name}`
  String repositoryAuthor(Object name) {
    return Intl.message(
      'Reoo author: $name',
      name: 'repositoryAuthor',
      desc: '',
      args: [name],
    );
  }

  /// `Repo description: {description}`
  String repositoryDescription(Object description) {
    return Intl.message(
      'Repo description: $description',
      name: 'repositoryDescription',
      desc: '',
      args: [description],
    );
  }

  /// `#{number}`
  String issueNumber(Object number) {
    return Intl.message(
      '#$number',
      name: 'issueNumber',
      desc: '',
      args: [number],
    );
  }

  /// `See more…`
  String get seeMore {
    return Intl.message(
      'See more…',
      name: 'seeMore',
      desc: '',
      args: [],
    );
  }

  /// `Issues`
  String get issues {
    return Intl.message(
      'Issues',
      name: 'issues',
      desc: '',
      args: [],
    );
  }

  /// `Github`
  String get webviewScreenTitle {
    return Intl.message(
      'Github',
      name: 'webviewScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Open`
  String get open {
    return Intl.message(
      'Open',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `Closed`
  String get closed {
    return Intl.message(
      'Closed',
      name: 'closed',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Strings> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Strings> load(Locale locale) => Strings.load(locale);
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
