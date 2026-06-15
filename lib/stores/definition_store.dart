import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part "definition_store.g.dart";

class DefinitionStore = DefinitionStoreBase with _$DefinitionStore;

abstract class DefinitionStoreBase with Store {
  @observable
  ThemeMode themeMode = ThemeMode.system;
}
