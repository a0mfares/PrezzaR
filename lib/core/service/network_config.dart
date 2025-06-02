import 'dart:developer';

import 'package:dio/dio.dart';

class NetworkConfig {
  InterceptorsWrapper getInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) {
        // Before the request is sent
        log('====================================== START REQUEST 🐛🐛🐛 ${options.method.toUpperCase()}====================================== ');
        log(" [${options.method}] => PATH: ${options.baseUrl + options.path + options.queryParameters.values.map((e) => e.toString()).toString()} ",
            name: 'Request');
        log("DATA: ${options.data}", name: 'Request');
        log("Header: ${options.headers}", name: 'Header');
        log('====================================== END REQUEST 🐛🐛🐛 ${options.method.toUpperCase()}======================================');
        // You can add headers or modify the request here
        // options.headers["Authorization"] = "Bearer YOUR_TOKEN";

        return handler.next(options); // Continue
      },
      onResponse: (response, handler) {
        // When the response is received
        log('====================================== START RESPONSE 🐛🐛🐛 ${response.statusCode}====================================== ');

        log("Response [${response.statusCode}] => DATA: ${response.data}");

        log('====================================== END RESPONSE 🐛🐛🐛 ${response.statusCode}}======================================');

        return handler.next(response); // Continue
      },
      onError: (DioException e, handler) {
        // When an error occurs
        log('====================================== START ERROR ❌❌❌ ${e.response?.statusCode}====================================== ');

        log("Error [${e.response?.statusCode}] => MESSAGE: ${e.response?.data}");
        log(
          '====================================== END ERROR ❌❌❌ ${e.response?.statusCode}======================================',
        );

        // You can handle token refresh or other error handling here
        return handler.next(e); // Continue
      },
    );
  }
}
