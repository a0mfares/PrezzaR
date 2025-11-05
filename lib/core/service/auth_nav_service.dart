import 'dart:async';

import 'package:prezza/core/helper/tools.dart';

class AuthNavService {
  static final AuthNavService _instance = AuthNavService._internal();
  factory AuthNavService() => _instance;
  AuthNavService._internal();

  Completer<bool>? _authCompleter;
  bool _isAuthenticating = false;

  // Start the authentication process
  void startAuthProcess() {
    if (_authCompleter == null || _authCompleter!.isCompleted) {
      _authCompleter = Completer<bool>();
      _isAuthenticating = true;
    }
  }

  // Complete the authentication process
  void completeAuthProcess(bool success) {
    if (_authCompleter != null && !_authCompleter!.isCompleted) {
      _authCompleter!.complete(success);
      _isAuthenticating = false;
    }
  }

  // Wait for authentication to complete
  Future<bool> waitForAuth(
      {Duration timeout = const Duration(seconds: 15)}) async {
    // Quick check first
    if (ifUserAuthenticated()) return true;

    // If no auth process is running, return false
    if (_authCompleter == null || _authCompleter!.isCompleted) {
      return ifUserAuthenticated();
    }

    try {
      return await _authCompleter!.future.timeout(timeout);
    } catch (e) {
      return false;
    }
  }

  // Check if authentication is in progress
  bool get isAuthenticating => _isAuthenticating;

  // Cancel authentication process
  void cancelAuth() {
    if (_authCompleter != null && !_authCompleter!.isCompleted) {
      _authCompleter!.complete(false);
      _isAuthenticating = false;
    }
  }
}
