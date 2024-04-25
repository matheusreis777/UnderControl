import 'package:flutter/material.dart';

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

  String _nomeUsuario = '';
  String get nomeUsuario => _nomeUsuario;
  set nomeUsuario(String value) {
    _nomeUsuario = value;
  }

  int _idEmpresa = 0;
  int get idEmpresa => _idEmpresa;
  set idEmpresa(int value) {
    _idEmpresa = value;
  }

  String _fotoUser = '';
  String get fotoUser => _fotoUser;
  set fotoUser(String value) {
    _fotoUser = value;
  }

  double _propPrice = 0.0;
  double get propPrice => _propPrice;
  set propPrice(double value) {
    _propPrice = value;
  }
}
