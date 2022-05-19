#ifndef FLUTTER_PLUGIN_FLUTTER_ZIP_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_ZIP_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_zip {

class FlutterZipPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterZipPlugin();

  virtual ~FlutterZipPlugin();

  // Disallow copy and assign.
  FlutterZipPlugin(const FlutterZipPlugin&) = delete;
  FlutterZipPlugin& operator=(const FlutterZipPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_zip

#endif  // FLUTTER_PLUGIN_FLUTTER_ZIP_PLUGIN_H_
