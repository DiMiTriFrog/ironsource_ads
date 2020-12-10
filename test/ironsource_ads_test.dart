import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ironsource_ads/ironsource_ads.dart';

void main() {
  const MethodChannel channel = MethodChannel('ironsource_ads');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await IronsourceAds.platformVersion, '42');
  });
}
