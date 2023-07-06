import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ns_profile_demo_platform_interface.dart';

/// An implementation of [NsProfileDemoPlatform] that uses method channels.
class MethodChannelNsProfileDemo extends NsProfileDemoPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ns_profile_demo');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
