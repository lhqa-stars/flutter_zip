// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'flutter_zip_platform_interface.dart';

/// A web implementation of the FlutterZipPlatform of the FlutterZip plugin.
class FlutterZipWeb extends FlutterZipPlatform {
  /// Constructs a FlutterZipWeb
  FlutterZipWeb();

  static void registerWith(Registrar registrar) {
    FlutterZipPlatform.instance = FlutterZipWeb();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<String?> getPlatformVersion() async {
    final version = html.window.navigator.userAgent;
    return version;
  }
}
