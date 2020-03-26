import 'dart:async';

import 'package:flutter/services.dart';

class Flutternewrelic {
  static const MethodChannel _channel =
      const MethodChannel('flutternewrelic');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
