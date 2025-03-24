import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  // States
  bool _isLoading = false;

  // Controllers
  bool _showPassword = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // Getters
  bool get showPassword => _showPassword;
  bool get isLoading => _isLoading;
  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

  void login() {}

  void toggleShowPassword() {
    _showPassword = !_showPassword;
    notifyListeners();
  }
}
