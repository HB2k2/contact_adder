// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updater.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StringUpdater on Updater, Store {
  late final _$nameAtom = Atom(name: 'Updater.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$emailAtom = Atom(name: 'Updater.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$UpdaterActionController =
      ActionController(name: 'Updater', context: context);

  @override
  void addName() {
    final _$actionInfo =
        _$UpdaterActionController.startAction(name: 'Updater.addName');
    try {
      return super.addName();
    } finally {
      _$UpdaterActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addEmail() {
    final _$actionInfo =
        _$UpdaterActionController.startAction(name: 'Updater.addEmail');
    try {
      return super.addEmail();
    } finally {
      _$UpdaterActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email}
    ''';
  }
}
