import 'package:training/domain/data_providers/session_data_providers.dart';

class MyAppModel{
  final _sessionDataProvider = SessionDataProvider();
  var _isAuth = false;
  bool get isAuth => _isAuth;

  Future<void> checkAuth() async{
    final sessionId = await _sessionDataProvider.getSessionId();
    _isAuth = sessionId != null;
  }
}
