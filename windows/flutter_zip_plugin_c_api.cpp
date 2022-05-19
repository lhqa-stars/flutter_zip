#include "include/flutter_zip/flutter_zip_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_zip_plugin.h"

void FlutterZipPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_zip::FlutterZipPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
