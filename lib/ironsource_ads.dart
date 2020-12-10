
import 'dart:async';

import 'package:flutter/services.dart';

class IronsourceAds {
  static const MethodChannel _channel =
      const MethodChannel('ironsource_ads');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
