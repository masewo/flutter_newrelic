#import "FlutternewrelicPlugin.h"
#if __has_include(<flutternewrelic/flutternewrelic-Swift.h>)
#import <flutternewrelic/flutternewrelic-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutternewrelic-Swift.h"
#endif

#import "NewRelicAgent/NewRelic.h"

@implementation FlutternewrelicPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [NewRelicAgent startWithApplicationToken:@"addyourapplicationtokenhere"];
  [SwiftFlutternewrelicPlugin registerWithRegistrar:registrar];
}
@end
