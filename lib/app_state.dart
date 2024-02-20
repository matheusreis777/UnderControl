import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  DocumentReference? _empresa =
      FirebaseFirestore.instance.doc('/empresa/empresa');
  DocumentReference? get empresa => _empresa;
  set empresa(DocumentReference? value) {
    _empresa = value;
  }

  bool _existeColaboradores = false;
  bool get existeColaboradores => _existeColaboradores;
  set existeColaboradores(bool value) {
    _existeColaboradores = value;
  }

  bool _existeServicos = false;
  bool get existeServicos => _existeServicos;
  set existeServicos(bool value) {
    _existeServicos = value;
  }

  String _valueFormat = '';
  String get valueFormat => _valueFormat;
  set valueFormat(String value) {
    _valueFormat = value;
  }

  String _filterDataServico = '';
  String get filterDataServico => _filterDataServico;
  set filterDataServico(String value) {
    _filterDataServico = value;
  }

  String _nomeEmpresa = '';
  String get nomeEmpresa => _nomeEmpresa;
  set nomeEmpresa(String value) {
    _nomeEmpresa = value;
  }
}
