import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  num? _idDaSessao;
  String? usuarioLogado;

  num? get idDaSessao => _idDaSessao;

  void login(num idDaSessao, String loginDoUsuario) {
    _idDaSessao = idDaSessao;
    usuarioLogado = loginDoUsuario;
    notifyListeners();
  }

  void logout() {
    _idDaSessao = null;
    usuarioLogado = null;
    notifyListeners();
  }
}
