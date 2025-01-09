import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_zip/flutter_zip.dart';
import 'package:flutter_zip/flutter_zip_platform_interface.dart';
import 'package:flutter_zip/flutter_zip_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterZipPlatform 
    with MockPlatformInterfaceMixin
    implements FlutterZipPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterZipPlatform initialPlatform = FlutterZipPlatform.instance;

  test('$MethodChannelFlutterZip is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterZip>());
  });

  test('getPlatformVersion', () async {
    FlutterZip flutterZipPlugin = FlutterZip();
    MockFlutterZipPlatform fakePlatform = MockFlutterZipPlatform();
    FlutterZipPlatform.instance = fakePlatform;
  
    expect(await flutterZipPlugin.getPlatformVersion(), '42');
  });
}
