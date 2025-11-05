import 'dart:developer';

class FailureServices<T> {
  final T message;

  FailureServices(this.message);
  String get getMsg {
    log(message.toString());
    if (message is Map) {
      final error = (message as Map);
      if (error.containsKey('message')) {
        return error['message'];
      }
      if (error.containsKey('detail')) {
        return error['detail'];
      }

      log(error.runtimeType.toString());
      if (error.containsKey('error')) {
        if (error['error'] is Map) {
          if ((error['error'] as Map).containsKey('stars')) {
            return (error['error']['stars'] as List).join();
          }
          if ((error['error'] as Map).containsKey('password')) {
            return (error['error']['password'] as List).join();
          }
        }
        return error['error'];
      }
      if (error.containsKey('email')) {
        return (error['email'] as List).join('\n');
      } else {
        return message.toString();
      }
    } else {
      return message.toString();
    }
  }
}
