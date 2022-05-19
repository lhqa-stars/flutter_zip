#import "FlutterZipPlugin.h"
#if __has_include(<flutter_zip/flutter_zip-Swift.h>)
#import <flutter_zip/flutter_zip-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_zip-Swift.h"
#endif

@implementation FlutterZipPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterZipPlugin registerWithRegistrar:registrar];
}
@end
