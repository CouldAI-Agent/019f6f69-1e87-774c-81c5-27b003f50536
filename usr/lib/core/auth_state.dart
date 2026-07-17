import 'package:flutter/material.dart';

enum UserRole { admin, user }

class AuthState extends ChangeNotifier {
  UserRole _currentRole = UserRole.admin;
  bool _isLoggedIn = false;

  UserRole get currentRole => _currentRole;
  bool get isLoggedIn => _isLoggedIn;

  void login(String email, String password) {
    // Mock login logic
    _isLoggedIn = true;
    // Set default role to admin for demo purposes, or based on email
    if (email.toLowerCase().contains('admin')) {
      _currentRole = UserRole.admin;
    } else {
      _currentRole = UserRole.user;
    }
    notifyListeners();
  }

  void logout() {
    _isLoggedIn = false;
    notifyListeners();
  }

  void switchRole(UserRole role) {
    _currentRole = role;
    notifyListeners();
  }
}
