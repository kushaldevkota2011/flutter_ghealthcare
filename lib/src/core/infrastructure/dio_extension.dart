import 'dart:io';

import 'package:dio/dio.dart';

extension DioErrorX on DioError {
  bool get noInternetConnection =>
      type == DioErrorType.other && message is SocketException;
}
