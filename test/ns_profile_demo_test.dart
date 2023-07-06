import 'package:flutter_test/flutter_test.dart';
import 'package:ns_profile_demo/ns_profile_demo.dart';
import 'package:ns_profile_demo/ns_profile_demo_platform_interface.dart';
import 'package:ns_profile_demo/ns_profile_demo_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNsProfileDemoPlatform
    with MockPlatformInterfaceMixin
    implements NsProfileDemoPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NsProfileDemoPlatform initialPlatform = NsProfileDemoPlatform.instance;

  test('$MethodChannelNsProfileDemo is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNsProfileDemo>());
  });

  test('getPlatformVersion', () async {
    NsProfileDemo nsProfileDemoPlugin = NsProfileDemo();
    MockNsProfileDemoPlatform fakePlatform = MockNsProfileDemoPlatform();
    NsProfileDemoPlatform.instance = fakePlatform;

    expect(await nsProfileDemoPlugin.getPlatformVersion(), '42');
  });
}
