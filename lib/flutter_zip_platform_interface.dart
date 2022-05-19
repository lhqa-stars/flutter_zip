import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_zip_method_channel.dart';

abstract class FlutterZipPlatform extends PlatformInterface {
  /// Constructs a FlutterZipPlatform.
  FlutterZipPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterZipPlatform _instance = MethodChannelFlutterZip();

  /// The default instance of [FlutterZipPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterZip].
  static FlutterZipPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterZipPlatform] when
  /// they register themselves.
  static set instance(FlutterZipPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
