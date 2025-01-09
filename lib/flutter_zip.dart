import 'package:flutter/services.dart';

import 'flutter_zip_platform_interface.dart';

class FlutterZip {
  Future<String?> getPlatformVersion() {
    return FlutterZipPlatform.instance.getPlatformVersion();
  }

  static const MethodChannel _channel = const MethodChannel('flutter_zip');
  //压缩
  static Future zip(String src, String dest, String password) async {
    return await _channel.invokeMethod('zip',
        <String, dynamic>{"src": src, "dest": dest, "password": password});
  }

  //解压
  static Future unzip(String zip, String dest, String password) async {
    return await _channel.invokeMethod('unzip',
        <String, dynamic>{"zip": zip, "dest": dest, "password": password});
  }
}
