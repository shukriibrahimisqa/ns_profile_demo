import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ns_profile_demo_method_channel.dart';

abstract class NsProfileDemoPlatform extends PlatformInterface {
  /// Constructs a NsProfileDemoPlatform.
  NsProfileDemoPlatform() : super(token: _token);

  static final Object _token = Object();

  static NsProfileDemoPlatform _instance = MethodChannelNsProfileDemo();

  /// The default instance of [NsProfileDemoPlatform] to use.
  ///
  /// Defaults to [MethodChannelNsProfileDemo].
  static NsProfileDemoPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NsProfileDemoPlatform] when
  /// they register themselves.
  static set instance(NsProfileDemoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
