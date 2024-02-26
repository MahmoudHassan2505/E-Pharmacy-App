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

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Username`
  String get AuthUsername {
    return Intl.message(
      'Username',
      name: 'AuthUsername',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get AuthPassword {
    return Intl.message(
      'Password',
      name: 'AuthPassword',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get AuthSignIn {
    return Intl.message(
      'Sign In',
      name: 'AuthSignIn',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Passowrd ?`
  String get AuthForgotPassword {
    return Intl.message(
      'Forgot Passowrd ?',
      name: 'AuthForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `D A S H B O A R D`
  String get HomeDashboard {
    return Intl.message(
      'D A S H B O A R D',
      name: 'HomeDashboard',
      desc: '',
      args: [],
    );
  }

  /// `S T O R E S `
  String get HomeStores {
    return Intl.message(
      'S T O R E S ',
      name: 'HomeStores',
      desc: '',
      args: [],
    );
  }

  /// `P A T I E N T S`
  String get HomePatients {
    return Intl.message(
      'P A T I E N T S',
      name: 'HomePatients',
      desc: '',
      args: [],
    );
  }

  /// `A D D A C C O U N T`
  String get AddAccount {
    return Intl.message(
      'A D D A C C O U N T',
      name: 'AddAccount',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get Resgistarion {
    return Intl.message(
      'Log out',
      name: 'Resgistarion',
      desc: '',
      args: [],
    );
  }

  /// `Student Phamacy`
  String get SidalyaEltlba {
    return Intl.message(
      'Student Phamacy',
      name: 'SidalyaEltlba',
      desc: '',
      args: [],
    );
  }

  /// `Mode`
  String get Mode {
    return Intl.message(
      'Mode',
      name: 'Mode',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
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
