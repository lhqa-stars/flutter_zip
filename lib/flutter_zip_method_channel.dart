import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_zip_platform_interface.dart';

/// An implementation of [FlutterZipPlatform] that uses method channels.
class MethodChannelFlutterZip extends FlutterZipPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_zip');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
